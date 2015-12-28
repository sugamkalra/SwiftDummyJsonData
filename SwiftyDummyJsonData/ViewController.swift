//
//  ViewController.swift
//  SwiftyDummyJsonData
//
//  Created by Sugam Kalra on 28/12/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.jsonParsingFromFile()
    }
    
    
    func jsonParsingFromFile()
    {
        let path: NSString = NSBundle.mainBundle().pathForResource("helps", ofType: "json")!
        
        let data : NSData = try! NSData(contentsOfFile: path as String, options: NSDataReadingOptions.DataReadingMapped)
        
        self.startParsing(data)
        
    }
    
    func startParsing(data :NSData)
    {
        let dict: NSDictionary!=(try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)) as! NSDictionary
        
        print(dict)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

