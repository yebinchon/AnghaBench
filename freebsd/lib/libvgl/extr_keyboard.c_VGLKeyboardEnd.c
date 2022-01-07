
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSKBMODE ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int VGLKeyboardMode ;
 int VGLKeyboardTty ;
 int ioctl (int ,int ,int) ;
 int tcsetattr (int ,int,int *) ;

void
VGLKeyboardEnd()
{
  if (VGLKeyboardMode != -1) {
    ioctl(0, KDSKBMODE, VGLKeyboardMode);
    tcsetattr(0, TCSANOW | TCSAFLUSH, &VGLKeyboardTty);
  }
}
