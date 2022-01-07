
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int byte ;
struct TYPE_9__ {int va_window_size; } ;
struct TYPE_8__ {int vi_mem_model; int vi_depth; int vi_planes; int vi_height; int vi_width; int vi_pixel_size; } ;
struct TYPE_7__ {int VYsize; int Ysize; int VXsize; int Xsize; void* Type; int * Bitmap; int Yorigin; int Xorigin; } ;


 int KDDISABIO ;
 int KDENABIO ;
 int KDSETMODE ;
 int KD_GRAPHICS ;
 int KD_TEXT ;
 int * MAP_FAILED ;
 int MAP_FILE ;
 int MAP_SHARED ;
 void* MEMBUF ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ VGLAbortPending ;
 TYPE_6__ VGLAdpInfo ;
 int VGLBitmapCopy (int *,int ,int ,TYPE_1__*,int ,int ,int ,int ) ;
 int * VGLBuf ;
 int VGLBufSize ;
 scalar_t__ VGLCurWindow ;
 TYPE_1__* VGLDisplay ;
 int VGLEnd () ;
 int * VGLMem ;
 int VGLMode ;
 TYPE_3__ VGLModeInfo ;
 int VGLMouseRestore () ;
 int VGLOldMode ;
 scalar_t__ VGLOnDisplay ;
 int VGLPanScreen (TYPE_1__*,int ,int ) ;
 int VGLRestoreBlank () ;
 int VGLRestoreBorder () ;
 int VGLRestorePalette () ;
 int VGLSetVScreenSize (TYPE_1__*,int ,int ) ;
 scalar_t__ VGLSwitchPending ;
 int VGLVDisplay ;
 void* VIDBUF16 ;
 void* VIDBUF16S ;
 void* VIDBUF24 ;
 void* VIDBUF24S ;
 void* VIDBUF32 ;
 void* VIDBUF32S ;
 void* VIDBUF4 ;
 void* VIDBUF4S ;
 void* VIDBUF8 ;
 void* VIDBUF8S ;
 void* VIDBUF8X ;
 int VT_ACKACQ ;
 int VT_RELDISP ;
 int VT_TRUE ;




 int exit (int ) ;
 int ioctl (int ,int ,int ) ;
 scalar_t__ mmap (int ,int,int,int,int ,int ) ;
 int munmap (int *,int) ;
 int pause () ;

void
VGLCheckSwitch()
{
  if (VGLAbortPending) {
    VGLEnd();
    exit(0);
  }
  while (VGLSwitchPending) {
    VGLSwitchPending = 0;
    if (VGLOnDisplay) {
      if (VGLModeInfo.vi_mem_model != 131)
        ioctl(0, KDENABIO, 0);
      ioctl(0, KDSETMODE, KD_GRAPHICS);
      ioctl(0, VGLMode, 0);
      VGLCurWindow = 0;
      VGLMem = (byte*)mmap(0, VGLAdpInfo.va_window_size, PROT_READ|PROT_WRITE,
      MAP_FILE | MAP_SHARED, 0, 0);


      VGLDisplay->Type = VIDBUF8;
      switch (VGLModeInfo.vi_mem_model) {
      case 129:
 if (VGLModeInfo.vi_depth == 4 && VGLModeInfo.vi_planes == 4) {
   if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
     VGLDisplay->Type = VIDBUF4S;
   else
     VGLDisplay->Type = VIDBUF4;
 } else {

 }
        break;
      case 130:
 if (VGLModeInfo.vi_depth == 8) {
   if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
     VGLDisplay->Type = VIDBUF8S;
   else
     VGLDisplay->Type = VIDBUF8;
 }
        break;
      case 128:
 VGLDisplay->Type = VIDBUF8X;
 break;
      case 131:
 switch (VGLModeInfo.vi_pixel_size) {
   case 2:
     if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
       VGLDisplay->Type = VIDBUF16S;
     else
       VGLDisplay->Type = VIDBUF16;
     break;
   case 3:
     if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
       VGLDisplay->Type = VIDBUF24S;
     else
       VGLDisplay->Type = VIDBUF24;
     break;
   case 4:
     if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
       VGLDisplay->Type = VIDBUF32S;
     else
       VGLDisplay->Type = VIDBUF32;
     break;
   default:

          break;
        }
      default:

        break;
      }

      VGLDisplay->Bitmap = VGLMem;
      VGLDisplay->Xsize = VGLModeInfo.vi_width;
      VGLDisplay->Ysize = VGLModeInfo.vi_height;
      VGLSetVScreenSize(VGLDisplay, VGLDisplay->VXsize, VGLDisplay->VYsize);
      VGLRestoreBlank();
      VGLRestoreBorder();
      VGLMouseRestore();
      VGLPanScreen(VGLDisplay, VGLDisplay->Xorigin, VGLDisplay->Yorigin);
      VGLBitmapCopy(&VGLVDisplay, 0, 0, VGLDisplay, 0, 0,
                    VGLDisplay->VXsize, VGLDisplay->VYsize);
      VGLRestorePalette();
      ioctl(0, VT_RELDISP, VT_ACKACQ);
    }
    else {
      VGLMem = MAP_FAILED;
      munmap(VGLDisplay->Bitmap, VGLAdpInfo.va_window_size);
      ioctl(0, VGLOldMode, 0);
      ioctl(0, KDSETMODE, KD_TEXT);
      if (VGLModeInfo.vi_mem_model != 131)
        ioctl(0, KDDISABIO, 0);
      ioctl(0, VT_RELDISP, VT_TRUE);
      VGLDisplay->Bitmap = VGLBuf;
      VGLDisplay->Type = MEMBUF;
      VGLDisplay->Xsize = VGLDisplay->VXsize;
      VGLDisplay->Ysize = VGLDisplay->VYsize;
      while (!VGLOnDisplay) pause();
    }
  }
}
