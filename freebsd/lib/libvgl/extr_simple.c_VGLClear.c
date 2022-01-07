
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
typedef int byte ;
struct TYPE_8__ {int Type; int VXsize; int Ysize; int VYsize; int PixelBytes; int Bitmap; int Yorigin; int Xorigin; int Xsize; } ;
typedef TYPE_1__ VGLBitmap ;
struct TYPE_9__ {int va_line_width; int va_window_size; } ;



 TYPE_7__ VGLAdpInfo ;
 int VGLCheckSwitch () ;
 TYPE_1__* VGLDisplay ;
 int VGLMouseFreeze () ;
 int VGLMouseUnFreeze () ;
 int VGLSetSegment (int) ;
 TYPE_1__ VGLVDisplay ;
 int VGL_MOUSEHIDE ;
 int __VGLBitmapCopy (TYPE_1__*,int ,int ,TYPE_1__*,int ,int,int,int) ;
 int __VGLMouseMode (int) ;
 int alloca (int) ;
 int bcopy (int *,int ,int) ;
 int htole32 (int ) ;
 int memset (int ,int ,int) ;
 int min (int,int ) ;
 int outb (int,int) ;

void
VGLClear(VGLBitmap *object, u_long color)
{
  VGLBitmap src;
  int i, len, mousemode, offset;

  VGLCheckSwitch();
  if (object == VGLDisplay) {
    VGLMouseFreeze();
    VGLClear(&VGLVDisplay, color);
  } else if (object->Type != 139)
    return;
  switch (object->Type) {
  case 139:
  case 130:
  case 129:
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
    src.Type = 139;
    src.Xsize = object->Xsize;
    src.VXsize = object->VXsize;
    src.Ysize = 1;
    src.VYsize = 1;
    src.Xorigin = 0;
    src.Yorigin = 0;
    src.Bitmap = alloca(object->VXsize * object->PixelBytes);
    src.PixelBytes = object->PixelBytes;
    color = htole32(color);
    for (i = 0; i < object->VXsize; i++)
      bcopy(&color, src.Bitmap + i * object->PixelBytes, object->PixelBytes);
    for (i = 0; i < object->VYsize; i++)
      __VGLBitmapCopy(&src, 0, 0, object, 0, i, object->VXsize, -1);
    break;

  case 128:
    mousemode = __VGLMouseMode(VGL_MOUSEHIDE);

    outb(0x3c6, 0xff);
    outb(0x3c4, 0x02); outb(0x3c5, 0x0f);
    memset(object->Bitmap, (byte)color, VGLAdpInfo.va_line_width*object->VYsize);
    __VGLMouseMode(mousemode);
    break;

  case 132:
  case 131:
    mousemode = __VGLMouseMode(VGL_MOUSEHIDE);

    outb(0x3c4, 0x02); outb(0x3c5, 0x0f);
    outb(0x3ce, 0x05); outb(0x3cf, 0x02);
    outb(0x3ce, 0x01); outb(0x3cf, 0x00);
    outb(0x3ce, 0x08); outb(0x3cf, 0xff);
    for (offset = 0; offset < VGLAdpInfo.va_line_width*object->VYsize; ) {
      VGLSetSegment(offset);
      len = min(object->VXsize*object->VYsize - offset,
  VGLAdpInfo.va_window_size);
      memset(object->Bitmap, (byte)color, len);
      offset += len;
    }
    outb(0x3ce, 0x05); outb(0x3cf, 0x00);
    __VGLMouseMode(mousemode);
    break;
  }
  if (object == VGLDisplay)
    VGLMouseUnFreeze();
}
