int screenw = 400;
int screenh = 400;
int numStars = 50;
Star butts[] = new Star[numStars];
void setup()
{
   size(screenw, screenh);
   
for(int i = 0; i < 20; i++)
{
 println(i); 
 makeStars(); 
background(0);
drawStars();
saveFrame("starfield###.png");

}
}

void draw()
{
  

}

void drawStars()
{
  for(int i = 0; i < numStars; i++)
  {
    butts[i].draw(); 
  }
}

class Star
{
  int x, y, w, h;
 Star()
  {
    y = (int) random(0, screenh);
    w = (int) random(1, 5);
    h = (int) random(1, 5);
    x = (int) random(0, screenw);
  }
 
 void draw()
{
  ellipse(x, y, w, h);
}

void dx(int shift)
{
  x = x + shift;
}

void dy(int shift)
{
  y = y + shift;
}
  
}

void shiftLeft()
{
  for(int i = 0; i < numStars; i++)
 {
   butts[i].dx(-1);
 } 
}

void makeStars()
{
  for(int i = 0; i < numStars; i++)
  {
     butts[i] = new Star();
  }
}
