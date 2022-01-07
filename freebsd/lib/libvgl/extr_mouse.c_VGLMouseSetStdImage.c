
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VXsize; } ;


 TYPE_1__* VGLDisplay ;
 int VGLMouseLargeAndMask ;
 int VGLMouseLargeOrMask ;
 int VGLMouseSetImage (int *,int *) ;
 int VGLMouseSmallAndMask ;
 int VGLMouseSmallOrMask ;

void
VGLMouseSetStdImage()
{
  if (VGLDisplay->VXsize > 800)
    VGLMouseSetImage(&VGLMouseLargeAndMask, &VGLMouseLargeOrMask);
  else
    VGLMouseSetImage(&VGLMouseSmallAndMask, &VGLMouseSmallOrMask);
}
