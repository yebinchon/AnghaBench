
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int VXsize; int VYsize; scalar_t__ Type; int PixelBytes; int * Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 scalar_t__ MEMBUF ;
 int VGLCheckSwitch () ;
 TYPE_1__* VGLDisplay ;
 TYPE_1__ VGLVDisplay ;
 int le32toh (int) ;
 int memcpy (int*,int *,int) ;

u_long
VGLGetXY(VGLBitmap *object, int x, int y)
{
  u_long color;
  int offset;

  VGLCheckSwitch();
  if (x<0 || x>=object->VXsize || y<0 || y>=object->VYsize)
    return 0;
  if (object == VGLDisplay)
    object = &VGLVDisplay;
  else if (object->Type != MEMBUF)
    return 0;
  offset = (y * object->VXsize + x) * object->PixelBytes;
  switch (object->PixelBytes) {
  case 1:
    memcpy(&color, &object->Bitmap[offset], 1);
    return le32toh(color) & 0xff;
  case 2:
    memcpy(&color, &object->Bitmap[offset], 2);
    return le32toh(color) & 0xffff;
  case 3:
    memcpy(&color, &object->Bitmap[offset], 3);
    return le32toh(color) & 0xffffff;
  case 4:
    memcpy(&color, &object->Bitmap[offset], 4);
    return le32toh(color);
  }
  return 0;
}
