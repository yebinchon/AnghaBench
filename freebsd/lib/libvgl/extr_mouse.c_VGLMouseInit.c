
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int buttons; int y; int x; } ;
struct TYPE_8__ {int signal; } ;
struct TYPE_10__ {TYPE_2__ data; TYPE_1__ mode; } ;
struct mouse_info {TYPE_3__ u; int operation; } ;
struct TYPE_11__ {int VXsize; int VYsize; int* Bitmap; } ;
typedef TYPE_4__ VGLBitmap ;
struct TYPE_12__ {int vi_mem_model; scalar_t__ vi_mode; } ;


 int BORDER ;
 int CONS_MOUSECTL ;
 int INTERIOR ;
 int MOUSE_GETINFO ;
 int MOUSE_MODE ;
 scalar_t__ M_BG640x480 ;
 int SIGUSR2 ;
 TYPE_7__ VGLModeInfo ;
 int VGLMouseAction ;
 int VGLMouseButtons ;
 TYPE_4__ VGLMouseLargeOrMask ;
 int VGLMouseMode (int) ;
 int VGLMouseSetStdImage () ;
 TYPE_4__ VGLMouseSmallOrMask ;
 int VGLMouseXpos ;
 int VGLMouseYpos ;



 int * getenv (char*) ;
 int ioctl (int ,int ,struct mouse_info*) ;
 int signal (int ,int ) ;
 int strtoul (int *,int *,int ) ;

int
VGLMouseInit(int mode)
{
  struct mouse_info mouseinfo;
  VGLBitmap *ormask;
  int andmask, border, error, i, interior;

  switch (VGLModeInfo.vi_mem_model) {
  case 130:
  case 129:
    andmask = 0x0f;
    border = 0x0f;
    interior = 0x04;
    break;
  case 128:
    andmask = 0x3f;
    border = 0x3f;
    interior = 0x24;
    break;
  default:
    andmask = 0xff;
    border = BORDER;
    interior = INTERIOR;
    break;
  }
  if (VGLModeInfo.vi_mode == M_BG640x480)
    border = 0;
  if (getenv("VGLMOUSEBORDERCOLOR") != ((void*)0))
    border = strtoul(getenv("VGLMOUSEBORDERCOLOR"), ((void*)0), 0);
  if (getenv("VGLMOUSEINTERIORCOLOR") != ((void*)0))
    interior = strtoul(getenv("VGLMOUSEINTERIORCOLOR"), ((void*)0), 0);
  ormask = &VGLMouseLargeOrMask;
  for (i = 0; i < ormask->VXsize * ormask->VYsize; i++)
    ormask->Bitmap[i] = ormask->Bitmap[i] == BORDER ? border :
                        ormask->Bitmap[i] == INTERIOR ? interior : 0;
  ormask = &VGLMouseSmallOrMask;
  for (i = 0; i < ormask->VXsize * ormask->VYsize; i++)
    ormask->Bitmap[i] = ormask->Bitmap[i] == BORDER ? border :
                        ormask->Bitmap[i] == INTERIOR ? interior : 0;
  VGLMouseSetStdImage();
  mouseinfo.operation = MOUSE_MODE;
  mouseinfo.u.mode.signal = SIGUSR2;
  if ((error = ioctl(0, CONS_MOUSECTL, &mouseinfo)))
    return error;
  signal(SIGUSR2, VGLMouseAction);
  mouseinfo.operation = MOUSE_GETINFO;
  ioctl(0, CONS_MOUSECTL, &mouseinfo);
  VGLMouseXpos = mouseinfo.u.data.x;
  VGLMouseYpos = mouseinfo.u.data.y;
  VGLMouseButtons = mouseinfo.u.data.buttons;
  VGLMouseMode(mode);
  return 0;
}
