ints.random <- sample(1:1000, 100)
print("random list:")
print(ints.random)

ints.sorted <- sort(ints.random)
print("sorted list:")
print(ints.sorted)

# get random key from list
key.random <- sample(1:(length(ints.random)), 1)
number.to.search <- ints.random[key.number]

print("random key value:")
print(number.to.search)

BinarySearch <- function(number.to.search, list) {
	# list.length <- length(list)
	iterations <- 1
	search.low <- 1
	search.high <- length(list)
	cursor <- floor(search.high / 2)
	
	while(number.to.search != list[cursor]) {
		if (number.to.search > list[cursor]) {
			search.low <- cursor
		} else {
			search.high <- cursor
		}
		cursor <- floor((search.high + search.low )/ 2)
		iterations <- iterations + 1
	}
	print("iterations:")
	print(iterations)
	return(cursor)
}

key.position <- BinarySearch(number.to.search, ints.sorted)

print("key position:")
print(key.position)

print("should be:")
print(match(number.to.search, ints.sorted))