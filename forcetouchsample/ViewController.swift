//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var logview: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    NSLog("viewDidLoad")
  }
  
  override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
    super.touchesEnded(touches, withEvent: event)
    
    for touch: UITouch in touches {
      if touch.view?.tag == logview.tag {
        logview.text = NSString.init(format: "E force: %f \n maximumPossibleForce: %f \n majorRadius: %f", touch.force, touch.maximumPossibleForce, touch.majorRadius) as String
      }
    }
  }
  
  override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    super.touchesBegan(touches, withEvent: event)
    
    for touch: UITouch in touches {
      if touch.view?.tag == logview.tag {
        logview.text = NSString.init(format: "B force: %f \n maximumPossibleForce: %f \n majorRadius: %f", touch.force, touch.maximumPossibleForce, touch.majorRadius) as String
      }
    }
  }
  
  override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    super.touchesMoved(touches, withEvent: event)
    
    for touch: UITouch in touches {
      if touch.view?.tag == logview.tag {
        logview.text = NSString.init(format: "M force: %f \n maximumPossibleForce: %f \n majorRadius: %f", touch.force, touch.maximumPossibleForce, touch.majorRadius) as String
      }
    }
  }
  
  
}

