
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF () ;
 int INTON () ;
 char VGLMouseButtons ;
 int VGLMouseShown ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;

int
VGLMouseStatus(int *x, int *y, char *buttons)
{
  INTOFF();
  *x = VGLMouseXpos;
  *y = VGLMouseYpos;
  *buttons = VGLMouseButtons;
  INTON();
  return VGLMouseShown;
}
