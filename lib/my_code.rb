# Your Code Here
def map(arr)
  new_arr = []
  for i in 0...arr.length do
    new_arr.push(yield(arr[i]))
  end
  new_arr
end

def reduce(arr, start = 0)
  for i in 0...arr.length - 1 do
    result = yield(arr[i], arr[i + 1])
  end
  result += start if start != 0
  result
end