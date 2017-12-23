//: [Previous](@previous)

import Foundation


//: ## 특정형식의 날짜포맷으로 date 객체 사용하기
let RFC3339DateFormatter = DateFormatter()
RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

let now = Date()
RFC3339DateFormatter.string(from: now)


/* 2011년 4월 25일 정각 */
let string = "2011-04-25T00:00:00"
let date = RFC3339DateFormatter.date(from: string)

//add 10 ^ 9 second from date
let gs = TimeInterval(1000000000)
var date2 = date?.addingTimeInterval(gs)
//let result = RFC3339DateFormatter.string(from: date2)



//: ### ISO8601DateFormatter class when working with ISO 8601 date representations.


//: [Next](@next)
