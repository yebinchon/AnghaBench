
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct mouse_info {TYPE_2__ u; int operation; } ;


 int CONS_MOUSECTL ;
 int INTOFF () ;
 int INTON () ;
 int MOUSE_GETINFO ;
 int MOUSE_MOVEABS ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;
 scalar_t__ ioctl (int ,int ,struct mouse_info*) ;

void
VGLMouseRestore(void)
{
  struct mouse_info mouseinfo;

  INTOFF();
  mouseinfo.operation = MOUSE_GETINFO;
  if (ioctl(0, CONS_MOUSECTL, &mouseinfo) == 0) {
    mouseinfo.operation = MOUSE_MOVEABS;
    mouseinfo.u.data.x = VGLMouseXpos;
    mouseinfo.u.data.y = VGLMouseYpos;
    ioctl(0, CONS_MOUSECTL, &mouseinfo);
  }
  INTON();
}
