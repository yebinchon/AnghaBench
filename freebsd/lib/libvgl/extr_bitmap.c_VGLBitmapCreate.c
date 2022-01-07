
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {int Type; int Xsize; int Ysize; int VXsize; int VYsize; int PixelBytes; int * Bitmap; scalar_t__ Yorigin; scalar_t__ Xorigin; } ;
typedef TYPE_1__ VGLBitmap ;
struct TYPE_5__ {int PixelBytes; } ;


 int MEMBUF ;
 TYPE_2__* VGLDisplay ;
 scalar_t__ malloc (int) ;

VGLBitmap
*VGLBitmapCreate(int type, int xsize, int ysize, byte *bits)
{
  VGLBitmap *object;

  if (type != MEMBUF)
    return ((void*)0);
  if (xsize < 0 || ysize < 0)
    return ((void*)0);
  object = (VGLBitmap *)malloc(sizeof(*object));
  if (object == ((void*)0))
    return ((void*)0);
  object->Type = type;
  object->Xsize = xsize;
  object->Ysize = ysize;
  object->VXsize = xsize;
  object->VYsize = ysize;
  object->Xorigin = 0;
  object->Yorigin = 0;
  object->Bitmap = bits;
  object->PixelBytes = VGLDisplay->PixelBytes;
  return object;
}
