//
//  ViewController.swift
//  Date Picker
//
//  Created by D7703_22 on 2018. 4. 11..
//  Copyright © 2018년 jun5250. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var realTime: UILabel!
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    @objc func updateTime(){
        let date=Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "현재시간:yyyy-MM-dd HH:mm:ss a EE"
        realTime.text = formatter.string(from: date)
    }
    
    @IBAction func changeDatePicker(_ sender: Any) {
        print("change Date Picker");
        //print(myDatePicker.date)
        
        // dateFormat
        let formatter = DateFormatter()
        formatter.dateFormat="선택시간:yyyy-MM-dd HH:mm:ss a EE"
        timeLabel.text=formatter.string(from: myDatePicker.date)
        //timeLabel.text = String(describing: myDatePicker.date)
    }
    
}


