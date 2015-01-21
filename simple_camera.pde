import processing.video.*;


//variable
//float m=millis();
//float s=second();

Capture cam;

void setup() {
  size(400, 400);
  frameRate(25);
  cam=new Capture(this);
  cam.start(); //turns on camera
}

/*void record() {
 
 for (int i=0; i<60; i=i+1) {
 println (s+" and "+m);
 saveFrame("video"+i);
 println("Saved");
 }
 }*/

void Camera() {
  if (cam.available()) { //needs this to display without lagging
    println("yes");
    cam.read(); //processes camera with current frame
  }
  image(cam, 0, 0); //image from camera displays

  if (keyPressed) {
    if (key=='s') {

      saveFrame("video-####");
      println("saved");
      //record();
      if (frameCount>100) {
        noLoop();
      }
    }
  }
}
void draw() {
  Camera();
}

