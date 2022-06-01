//
//  ViewController.swift
//  Mini Piano
//
//  Created by Swifty on 6/1/22.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedBtn1(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
       
        
    }
    
//    func playAudio(soundName: String) {
//
//          let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player.play()
//
//
//      }

    
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        if url == nil {
            print("try Again")
        }else {
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
        
    }
    
}

