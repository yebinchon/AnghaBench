
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int VGLBitmap ;


 int VGLLine (int *,int,int,int,int,int ) ;

void
VGLFilledBox(VGLBitmap *object, int x1, int y1, int x2, int y2, u_long color)
{
  int y;

  for (y=y1; y<=y2; y++) VGLLine(object, x1, y, x2, y, color);
}
