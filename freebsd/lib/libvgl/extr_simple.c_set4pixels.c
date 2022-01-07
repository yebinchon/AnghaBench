
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int VGLBitmap ;


 int VGLSetXY (int *,int,int,int ) ;

__attribute__((used)) static inline void
set4pixels(VGLBitmap *object, int x, int y, int xc, int yc, u_long color)
{
  if (x!=0) {
    VGLSetXY(object, xc+x, yc+y, color);
    VGLSetXY(object, xc-x, yc+y, color);
    if (y!=0) {
      VGLSetXY(object, xc+x, yc-y, color);
      VGLSetXY(object, xc-x, yc-y, color);
    }
  }
  else {
    VGLSetXY(object, xc, yc+y, color);
    if (y!=0)
      VGLSetXY(object, xc, yc-y, color);
  }
}
