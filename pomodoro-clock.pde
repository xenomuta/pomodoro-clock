/* @pjs preload="/pomodoro.png,/shadow.png,/numbers.png;/light.png"; */
/* crisp="true"; transparent="true";  */
int time;
float angle;
PImage pomodoro, numbers, light, shadow;

void setup() {
  pomodoro = loadImage("/pomodoro.png");
  numbers = loadImage("/numbers.png");
  shadow = loadImage("/shadow.png");
  light = loadImage("/light.png");
  size(pomodoro.width, pomodoro.height, P3D);
  frameRate(10);
  smooth();
  time = 0;
  noFill();
  stroke(255, 0, 0);
}

void draw() {  
  angle++;
  background(0,0);
  pushMatrix();
  translate(width / 2, height / 2, 0);
  rotateZ(radians(angle));
  beginShape();
  texture(pomodoro);
  vertex(0, 0);
  vertex(width, 0);
  vertex(width, height);
  vertex(0, height);
  endShape();
  popMatrix();

  // if (mousePressed) {
  //   // light = loadImage("/light.png");
  //   // light.blend(pomodoro, 0, 0, numbers.width, numbers.height, 0, 0, numbers.width, numbers.height, SOFT_LIGHT);
  //   tint(255, 64);
  //   image(light, width / 2, height / 2);
  //   image(pomodoro, width / 2, width / 2);
  //   noTint();
  // }
  // imageMode(CENTER);
  // image(pomodoro, width / 2, width / 2);
  // image(shadow, 2 + width / 2, height / 2 - 2);
  // image(numbers, width / 2, height / 2);
}
