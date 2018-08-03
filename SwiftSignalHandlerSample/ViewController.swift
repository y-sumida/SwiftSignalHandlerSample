import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var exceptionLabel: UILabel!
    @IBOutlet weak var signalLabel1: UILabel!
    @IBOutlet weak var signalLabel2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let log = UserDefaults.standard.value(forKey: "exception") as? String {
            exceptionLabel.text = log
        }
        if let log = UserDefaults.standard.value(forKey: "signal1") as? String {
            signalLabel1.text = log
        }
        if let log = UserDefaults.standard.value(forKey: "signal2") as? String {
            signalLabel2.text = log
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton1(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "exception")
        UserDefaults.standard.removeObject(forKey: "signal1")
        UserDefaults.standard.removeObject(forKey: "signal2")
        
        let a: NSArray = [""]
        print(a[2])
    }
    @IBAction func tapButton2(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "exception")
        UserDefaults.standard.removeObject(forKey: "signal1")
        UserDefaults.standard.removeObject(forKey: "signal2")

        let a = [0]
        print(a[2])
    }
}

