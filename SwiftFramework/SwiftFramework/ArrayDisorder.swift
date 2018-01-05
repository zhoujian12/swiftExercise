//
//  ArrayDisorder.swift
//  SwiftFramework
//
//  Created by JiWuChao on 2018/1/5.
//  Copyright © 2018年 JiWuChao. All rights reserved.
//

import UIKit

public class ArrayDisorder: NSObject {

  open func disorder (orders:Array<Any>) -> Array<Any> {
        var temp = orders
        var count = Int(temp.count)
        while count > 0 {
            let index = Int(arc4random_uniform(UInt32(Int32(count))))
            let last =  Int(count-1)
            temp.swapAt(index, last)
            count -= 1
        }
        return temp
    }
}

//- (NSArray *)disorder {
//    NSMutableArray * tmp = self.mutableCopy;
//    NSInteger count = tmp.count;
//    while (count > 0) {
//        NSInteger index = arc4random() % count;
//        id value = tmp[index];
//        tmp[index] = tmp[count - 1];
//        tmp[count - 1] = value;
//        count --;
//    }
//    return tmp.copy;
//}

