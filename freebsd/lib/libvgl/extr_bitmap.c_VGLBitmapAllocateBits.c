
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int VXsize; int VYsize; int PixelBytes; int * Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 int * malloc (int) ;

int
VGLBitmapAllocateBits(VGLBitmap *object)
{
  object->Bitmap = malloc(object->VXsize*object->VYsize*object->PixelBytes);
  if (object->Bitmap == ((void*)0))
    return -1;
  return 0;
}
