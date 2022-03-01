//  ViewController.swift
//  SolarSystem
//  Created by Suraj Kotte on 30/03/21.
// let hoverUp = SCNAction.moveBy(x: 0, y: 0.2, z: 0, duration: 2.5) // to hover up  with rotation
// let hoverDown = SCNAction.moveBy(x: 0, y: -0.2, z: 0, duration: 2.5) // to hover down with rotation
// let hoverSequence = SCNAction.sequence([hoverUp, hoverDown]) // to do this in sequence first it will hover up and then hover down
// let rotateAndHover = SCNAction.group([rotateOne, hoverSequence]) // rotation with hovering
// let repeatForever = SCNAction.repeatForever(rotateAndHover) // to rotate the object continuously with hovering
import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        sceneView.scene.background.contents = UIImage(named: "art.scnassets/sim/Stars.jpeg");
        let sun = SCNSphere(radius: 0.25)
        let material1 = SCNMaterial();
        material1.diffuse.contents = UIImage(named: "art.scnassets/sim/SUN.jpeg");
        sun.materials = [material1]
        let sunnode = SCNNode()
        sunnode.position = SCNVector3(0, 0, 0.2)
        let rotateOne = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi), z: 0, duration: 12)
         let repeatForever = SCNAction.repeatForever(rotateOne) // to rotate the object continuously without hovering
        sunnode.runAction(repeatForever)
        sunnode.geometry = sun
        sceneView.scene.rootNode.addChildNode(sunnode)
        
    //--------------------------------------------------------------------
        
        let mercury = SCNSphere(radius: 0.07)
        let mermaterial = SCNMaterial()
        mermaterial.diffuse.contents = UIImage(named: "art.scnassets/sim/8k_mercury.jpeg")
        mercury.materials = [mermaterial]
        let mercurynode = SCNNode()
        mercurynode.position = SCNVector3(0.08, 0, 0.4)
        let mercuryrotate = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi),z: 0,duration: 10)
        let merrepeat = SCNAction.repeatForever(mercuryrotate)
        mercurynode.runAction(repeatForever)
        mercurynode.runAction(merrepeat)
        mercurynode.geometry = mercury
        sunnode.addChildNode(mercurynode)
        let r = SCNTube(innerRadius: 0.4, outerRadius: 0.4, height: 0.008)
        let rmaterial = SCNMaterial();
        rmaterial.diffuse.contents = UIColor.white
        r.materials = [rmaterial]
        let rnode = SCNNode()
        rnode.geometry = r
        sunnode.addChildNode(rnode)
        
        let r1 = SCNTube(innerRadius: 0.82, outerRadius: 0.82, height: 0.008)
        let r1material = SCNMaterial();
        r1material.diffuse.contents = UIColor.white
        r1.materials = [r1material]
        let r1node = SCNNode()
        r1node.geometry = r1
        sunnode.addChildNode(r1node)
        
        let r12 = SCNTube(innerRadius: 1.2, outerRadius: 1.2 , height: 0.008)
        let r12material = SCNMaterial();
        r12material.diffuse.contents = UIColor.white
        r12.materials = [r12material]
        let r12node = SCNNode()
        r12node.geometry = r12
        sunnode.addChildNode(r12node)
        
    //-----------------------------------------------------------------------------
        
        let venus = SCNSphere(radius: 0.06)
        let venmaterial = SCNMaterial()
        venmaterial.diffuse.contents = UIImage(named: "art.scnassets/sim/venus.jpeg")
        venus.materials = [venmaterial]
        let venunode = SCNNode()
        venunode.position = SCNVector3(-0.2,0,0.8)
        venunode.geometry = venus
        venunode.runAction(repeatForever)
        sunnode.addChildNode(venunode)
        
    //-------------------------------------------------------------------------------
        
        let earth = SCNSphere(radius: 0.10)
        let earthmaterial = SCNMaterial()
        earthmaterial.diffuse.contents = UIImage(named: "art.scnassets/sim/8k_earth_daymap.jpeg")
        earth.materials = [earthmaterial]
        let earthnode = SCNNode()
        earthnode.position = SCNVector3(0, 0, 1.2)
        let earthrotate = SCNAction.rotateBy(x:0 , y: CGFloat(Float.pi), z: 0, duration: 5)
        let er = SCNAction.repeatForever(earthrotate)
        earthnode.runAction(er)
       // earthnode.runAction(repeatForever)
        earthnode.geometry = earth
        sunnode.addChildNode(earthnode)
        
    //-------------------------------------------------------------------------------
        
        let moon = SCNSphere(radius: 0.05)
        let moonmaterial = SCNMaterial()
        moonmaterial.diffuse.contents = UIImage(named: "art.scnassets/sim/moon.jpeg")
        moon.materials = [moonmaterial]
        let moonnode = SCNNode()
        moonnode.position = SCNVector3(0, 0, 0.18)
        let moonrotate = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi), z: 0, duration: 10)
        let mr = SCNAction.repeatForever(moonrotate)
        moonnode.geometry = moon
        moonnode.runAction(mr)
        earthnode.addChildNode(moonnode)
        
    //-------------------------------------------------------------------------------
        
        let mars = SCNSphere(radius: 0.07)
        let marsmaterial = SCNMaterial()
        marsmaterial.diffuse.contents = UIImage(named: "art.scnassets/sim/mars.jpeg")
        mars.materials = [marsmaterial]
        let marsnode = SCNNode()
        marsnode.position = SCNVector3(0.3, 0, 1.6)
        marsnode.geometry = mars
        marsnode.runAction(repeatForever)
        sunnode.addChildNode(marsnode)
        
    //-------------------------------------------------------------------------------
        
        let jupiter = SCNSphere(radius: 0.12)
        let jupiterm = SCNMaterial()
        jupiterm.diffuse.contents = UIImage(named: "art.scnassets/sim/jupiter.jpeg")
        jupiter.materials = [jupiterm]
        let jupitern = SCNNode()
        jupitern.position = SCNVector3(0, 0, 2.0)
        jupitern.geometry = jupiter
        jupitern.runAction(repeatForever)
        sunnode.addChildNode(jupitern)
        
    //-------------------------------------------------------------------------------
        
        let saturn = SCNSphere(radius: 0.18)
        let saturnm = SCNMaterial()
        saturnm.diffuse.contents = UIImage(named: "art.scnassets/sim/saturn.jpeg")
        saturn.materials = [saturnm]
        let saturnn = SCNNode()
        saturnn.position = SCNVector3(0.06, 0, 2.8)
        saturnn.geometry = saturn
        saturnn.runAction(repeatForever)
        sunnode.addChildNode(saturnn)
//        let ring = SCNTorus(ringRadius: 0.3, pipeRadius: 0.005)
        let ring = SCNTube(innerRadius: 0.2, outerRadius: 0.4, height: 0.01)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/sim/uring.png")
        ring.materials = [material]
        let rn = SCNNode()
        rn.position = SCNVector3(0, 0, 0)
        rn.geometry = ring
        saturnn.addChildNode(rn)
    //-------------------------------------------------------------------------------
        let uranus = SCNSphere(radius: 0.1)
        let uranusm = SCNMaterial()
        uranusm.diffuse.contents = UIImage(named: "art.scnassets/sim/uranus.jpeg")
        uranus.materials = [uranusm]
        let uranusn = SCNNode()
        uranusn.position = SCNVector3(0.04, -0.3 , 3.8)
        uranusn.geometry = uranus
        uranusn.runAction(repeatForever)
        sunnode.addChildNode(uranusn)
        
        
        let neptune = SCNSphere(radius: 0.06)
        let neptunem = SCNMaterial()
        neptunem.diffuse.contents = UIImage(named: "art.scnassets/sim/neptune.jpeg")
        neptune.materials = [neptunem]
        let neptunen = SCNNode()
        neptunen.position = SCNVector3(0.06, 0 , 4.3)
        neptunen.geometry = neptune
        neptunen.runAction(repeatForever)
        sunnode.addChildNode(neptunen)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
