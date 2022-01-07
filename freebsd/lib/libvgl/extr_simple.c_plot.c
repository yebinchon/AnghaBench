
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int VGLBitmap ;


 int VGLSetXY (int *,int,int,int ) ;

void
plot(VGLBitmap * object, int x, int y, int flag, u_long color)
{

  if (flag)
    VGLSetXY(object, y, x, color);
  else
    VGLSetXY(object, x, y, color);
}
