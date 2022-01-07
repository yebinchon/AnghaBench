
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VYsize; int VXsize; } ;


 int INTOFF () ;
 int INTON () ;
 int VGLDisplay ;
 TYPE_1__* VGLMouseAndMask ;
 int VGLMouseShown ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;
 int VGLVDisplay ;
 int VGL_MOUSEHIDE ;
 int VGL_MOUSESHOW ;
 int __VGLBitmapCopy (int *,int ,int ,int ,int ,int ,int ,int ) ;

int
__VGLMouseMode(int mode)
{
  int oldmode;

  INTOFF();
  oldmode = VGLMouseShown;
  if (mode == VGL_MOUSESHOW) {
    if (VGLMouseShown == VGL_MOUSEHIDE) {
      VGLMouseShown = VGL_MOUSESHOW;
      __VGLBitmapCopy(&VGLVDisplay, VGLMouseXpos, VGLMouseYpos,
                      VGLDisplay, VGLMouseXpos, VGLMouseYpos,
                      VGLMouseAndMask->VXsize, -VGLMouseAndMask->VYsize);
    }
  }
  else {
    if (VGLMouseShown == VGL_MOUSESHOW) {
      VGLMouseShown = VGL_MOUSEHIDE;
      __VGLBitmapCopy(&VGLVDisplay, VGLMouseXpos, VGLMouseYpos,
                      VGLDisplay, VGLMouseXpos, VGLMouseYpos,
                      VGLMouseAndMask->VXsize, VGLMouseAndMask->VYsize);
    }
  }
  INTON();
  return oldmode;
}
