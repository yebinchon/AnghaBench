
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int byte ;
struct TYPE_6__ {int VXsize; int VYsize; int Type; int PixelBytes; int* Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;
struct TYPE_7__ {int va_line_width; int va_window_size; } ;



 TYPE_5__ VGLAdpInfo ;
 int VGLCheckSwitch () ;
 TYPE_1__* VGLDisplay ;
 int VGLMouseFreezeXY (int,int) ;
 int VGLMouseUnFreeze () ;
 int VGLSetSegment (int) ;
 TYPE_1__ VGLVDisplay ;
 int htole32 (int) ;
 int memcpy (int*,int*,int) ;
 int outb (int,int) ;

void
VGLSetXY(VGLBitmap *object, int x, int y, u_long color)
{
  int offset, soffset, undermouse;

  VGLCheckSwitch();
  if (x>=0 && x<object->VXsize && y>=0 && y<object->VYsize) {
    if (object == VGLDisplay) {
      undermouse = VGLMouseFreezeXY(x, y);
      VGLSetXY(&VGLVDisplay, x, y, color);
    } else if (object->Type != 139)
      return;
    else
      undermouse = 0;
    if (!undermouse) {
      offset = (y * object->VXsize + x) * object->PixelBytes;
      switch (object->Type) {
      case 129:
      case 137:
      case 133:
        offset = VGLSetSegment(offset);

      case 139:
      case 130:
      case 138:
      case 136:
      case 134:
        color = htole32(color);
        switch (object->PixelBytes) {
        case 1:
          memcpy(&object->Bitmap[offset], &color, 1);
          break;
        case 2:
          memcpy(&object->Bitmap[offset], &color, 2);
          break;
        case 3:
          memcpy(&object->Bitmap[offset], &color, 3);
          break;
        case 4:
          memcpy(&object->Bitmap[offset], &color, 4);
          break;
        }
        break;
      case 135:
        soffset = VGLSetSegment(offset);
        color = htole32(color);
        switch (VGLAdpInfo.va_window_size - soffset) {
        case 1:
          memcpy(&object->Bitmap[soffset], &color, 1);
          soffset = VGLSetSegment(offset + 1);
          memcpy(&object->Bitmap[soffset], (byte *)&color + 1, 2);
          break;
        case 2:
          memcpy(&object->Bitmap[soffset], &color, 2);
          soffset = VGLSetSegment(offset + 2);
          memcpy(&object->Bitmap[soffset], (byte *)&color + 2, 1);
          break;
        default:
          memcpy(&object->Bitmap[soffset], &color, 3);
          break;
        }
        break;
      case 128:
        outb(0x3c4, 0x02);
        outb(0x3c5, 0x01 << (x&0x3));
 object->Bitmap[(unsigned)(VGLAdpInfo.va_line_width*y)+(x/4)] = ((byte)color);
 break;
      case 131:
 offset = VGLSetSegment(y*VGLAdpInfo.va_line_width + x/8);
 goto set_planar;
      case 132:
 offset = y*VGLAdpInfo.va_line_width + x/8;
set_planar:
        outb(0x3c4, 0x02); outb(0x3c5, 0x0f);
        outb(0x3ce, 0x00); outb(0x3cf, (byte)color & 0x0f);
        outb(0x3ce, 0x01); outb(0x3cf, 0x0f);
        outb(0x3ce, 0x08); outb(0x3cf, 0x80 >> (x%8));
 object->Bitmap[offset] |= (byte)color;
      }
    }
    if (object == VGLDisplay)
      VGLMouseUnFreeze();
  }
}
