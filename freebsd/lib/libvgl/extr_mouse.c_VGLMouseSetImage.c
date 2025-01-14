
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int VYsize; int VXsize; } ;
typedef TYPE_1__ VGLBitmap ;
struct TYPE_12__ {struct TYPE_12__* Bitmap; } ;


 int MEMBUF ;
 int VGLBitmapAllocateBits (TYPE_2__*) ;
 TYPE_2__* VGLBitmapCreate (int ,int ,int ,int ) ;
 int VGLBitmapCvt (TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* VGLMouseAndMask ;
 TYPE_2__* VGLMouseOrMask ;
 int VGL_MOUSEHIDE ;
 int __VGLMouseMode (int) ;
 int free (TYPE_2__*) ;

void
VGLMouseSetImage(VGLBitmap *AndMask, VGLBitmap *OrMask)
{
  int mousemode;

  mousemode = __VGLMouseMode(VGL_MOUSEHIDE);

  VGLMouseAndMask = AndMask;

  if (VGLMouseOrMask != ((void*)0)) {
    free(VGLMouseOrMask->Bitmap);
    free(VGLMouseOrMask);
  }
  VGLMouseOrMask = VGLBitmapCreate(MEMBUF, OrMask->VXsize, OrMask->VYsize, 0);
  VGLBitmapAllocateBits(VGLMouseOrMask);
  VGLBitmapCvt(OrMask, VGLMouseOrMask);

  __VGLMouseMode(mousemode);
}
