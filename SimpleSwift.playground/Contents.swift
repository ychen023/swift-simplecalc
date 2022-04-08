print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    if args.count == 1 {
        return 0
    } else if args[1] == "+" || args[1] == "-" || args[1] == "*" || args[1] == "/" || args[1] == "%" {
        let op = args[1]
        switch op {
        case "+":
            return Int(args[0])! + Int(args[2])!
        case "-":
            return Int(args[0])! - Int(args[2])!
        case "*":
            return Int(args[0])! * Int(args[2])!
        case "/":
            return Int(args[0])! / Int(args[2])!
        case "%":
            return Int(args[0])! % Int(args[2])!
        default:
            return -1
        }
    } else {
        let op1 = args[args.count - 1]
        var sum = 0
        for index in 0...args.count - 2 {
            sum = sum + Int(args[index])!
        }
        let num = Int(args[0])!
        var fact = 1
        if num > 0 {
            for i in 1...num {
                fact = fact * i
            }
        } else {
            fact = 1
        }
        
        switch op1 {
            case "count":
                return args.count - 1
            case "avg":
                return sum / (args.count - 1)
            case "fact":
                return fact
            default:
                return -1
        }
    }
}


func calculate(_ arg: String) -> Int {
    let arr = arg.split(separator: " ")
    if arr.count == 1 {
        return 0
    } else if arr[1] == "+" || arr[1] == "-" || arr[1] == "*" || arr[1] == "/" || arr[1] == "%" {
        let op = arr[1]
        switch op {
        case "+":
            return Int(arr[0])! + Int(arr[2])!
        case "-":
            return Int(arr[0])! - Int(arr[2])!
        case "*":
            return Int(arr[0])! * Int(arr[2])!
        case "/":
            return Int(arr[0])! / Int(arr[2])!
        case "%":
            return Int(arr[0])! % Int(arr[2])!
        default:
            return -1
        }
    } else {
        let op1 = arr[arr.count - 1]
        var sum = 0
        for index in 0...arr.count - 2 {
            sum = sum + Int(arr[index])!
        }
        let num = Int(arr[0])!
        var fact = 1
        if num > 0 {
            for i in 1...num {
                fact = fact * i
            }
        } else {
            fact = 1
        }
        
        switch op1 {
            case "count":
                return arr.count - 1
            case "avg":
                return sum / (arr.count - 1)
            case "fact":
                return fact
            default:
                return -1
        }
    }
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers

calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5

 
// Implement calculate([String]) and calculate(String)
// to use floating-point values

func calculate(_ args: [String]) -> Double {
    let op = args[1]
    switch op {
    case "+":
        return Double(args[0])! + Double(args[2])!
    case "-":
        return Double(args[0])! - Double(args[2])!
    case "*":
        return Double(args[0])! * Double(args[2])!
    case "/":
        return Double(args[0])! / Double(args[2])!
    case "%":
        return Double(args[0])!.truncatingRemainder(dividingBy: Double(args[2])!)
    default:
        return -1
    }
}

func calculate(_ arg: String) -> Double {
    let arr = arg.split(separator: " ")
    return Double(arr.count - 1)
}



calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5.0


