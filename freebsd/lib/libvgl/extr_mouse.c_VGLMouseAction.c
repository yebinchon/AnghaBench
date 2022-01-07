
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; scalar_t__ y; int buttons; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct mouse_info {TYPE_2__ u; int operation; } ;


 int CONS_MOUSECTL ;
 int INTOFF () ;
 int MOUSE_GETINFO ;
 int VGLMintpending ;
 int VGLMouseButtons ;
 scalar_t__ VGLMouseXpos ;
 scalar_t__ VGLMouseYpos ;
 scalar_t__ VGLMsuppressint ;
 int VGL_MOUSEHIDE ;
 int __VGLMouseMode (int) ;
 int ioctl (int ,int ,struct mouse_info*) ;

__attribute__((used)) static void
VGLMouseAction(int dummy)
{
  struct mouse_info mouseinfo;
  int mousemode;

  if (VGLMsuppressint) {
    VGLMintpending = 1;
    return;
  }
again:
  INTOFF();
  VGLMintpending = 0;
  mouseinfo.operation = MOUSE_GETINFO;
  ioctl(0, CONS_MOUSECTL, &mouseinfo);
  if (VGLMouseXpos != mouseinfo.u.data.x ||
      VGLMouseYpos != mouseinfo.u.data.y) {
    mousemode = __VGLMouseMode(VGL_MOUSEHIDE);
    VGLMouseXpos = mouseinfo.u.data.x;
    VGLMouseYpos = mouseinfo.u.data.y;
    __VGLMouseMode(mousemode);
  }
  VGLMouseButtons = mouseinfo.u.data.buttons;






  VGLMsuppressint = 0;
  if (VGLMintpending)
    goto again;
}
