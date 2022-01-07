
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Bitmap; } ;
typedef TYPE_1__ VGLBitmap ;


 int free (TYPE_1__*) ;

void
VGLBitmapDestroy(VGLBitmap *object)
{
  if (object->Bitmap)
    free(object->Bitmap);
  free(object);
}
