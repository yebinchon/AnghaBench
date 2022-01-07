
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int VGLBitmap ;
struct TYPE_2__ {int Width; } ;


 int VGLBitmapPutChar (int *,int,int,char,int ,int ,int,int) ;
 TYPE_1__* VGLTextFont ;
 int strlen (char*) ;

void
VGLBitmapString(VGLBitmap *Object, int x, int y, char *str,
  u_long fgcol, u_long bgcol, int fill, int dir)
{
  int pos;

  for (pos=0; pos<strlen(str); pos++) {
    switch (dir) {
      case 0:
        VGLBitmapPutChar(Object, x+(pos*VGLTextFont->Width), y,
                         str[pos], fgcol, bgcol, fill, dir);
 break;
      case 1:
        VGLBitmapPutChar(Object, x, y-(pos*VGLTextFont->Width),
           str[pos], fgcol, bgcol, fill, dir);
 break;
      case 2:
        VGLBitmapPutChar(Object, x-(pos*VGLTextFont->Width), y,
           str[pos], fgcol, bgcol, fill, dir);
 break;
      case 3:
        VGLBitmapPutChar(Object, x, y+(pos*VGLTextFont->Width),
           str[pos], fgcol, bgcol, fill, dir);
 break;
      case 4:
        VGLBitmapPutChar(Object, x+(pos*VGLTextFont->Width),
                         y-(pos*VGLTextFont->Width),
           str[pos], fgcol, bgcol, fill, dir);
 break;
    }
  }
}
