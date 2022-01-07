
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VXsize; int VYsize; scalar_t__* Bitmap; } ;


 int INTOFF () ;
 TYPE_1__* VGLMouseAndMask ;
 scalar_t__ VGLMouseShown ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;
 scalar_t__ VGL_MOUSESHOW ;

int
VGLMouseFreezeXY(int x, int y)
{
  INTOFF();
  if (VGLMouseShown != VGL_MOUSESHOW)
    return 0;
  if (x >= VGLMouseXpos && x < VGLMouseXpos + VGLMouseAndMask->VXsize &&
      y >= VGLMouseYpos && y < VGLMouseYpos + VGLMouseAndMask->VYsize &&
      VGLMouseAndMask->Bitmap[(y-VGLMouseYpos)*VGLMouseAndMask->VXsize+
                              (x-VGLMouseXpos)])
    return 1;
  return 0;
}
