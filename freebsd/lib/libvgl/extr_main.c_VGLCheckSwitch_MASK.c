#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_9__ {int va_window_size; } ;
struct TYPE_8__ {int vi_mem_model; int vi_depth; int vi_planes; int /*<<< orphan*/  vi_height; int /*<<< orphan*/  vi_width; int /*<<< orphan*/  vi_pixel_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  VYsize; int /*<<< orphan*/  Ysize; int /*<<< orphan*/  VXsize; int /*<<< orphan*/  Xsize; void* Type; int /*<<< orphan*/ * Bitmap; int /*<<< orphan*/  Yorigin; int /*<<< orphan*/  Xorigin; } ;

/* Variables and functions */
 int /*<<< orphan*/  KDDISABIO ; 
 int /*<<< orphan*/  KDENABIO ; 
 int /*<<< orphan*/  KDSETMODE ; 
 int /*<<< orphan*/  KD_GRAPHICS ; 
 int /*<<< orphan*/  KD_TEXT ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 void* MEMBUF ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ VGLAbortPending ; 
 TYPE_6__ VGLAdpInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * VGLBuf ; 
 int VGLBufSize ; 
 scalar_t__ VGLCurWindow ; 
 TYPE_1__* VGLDisplay ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * VGLMem ; 
 int /*<<< orphan*/  VGLMode ; 
 TYPE_3__ VGLModeInfo ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  VGLOldMode ; 
 scalar_t__ VGLOnDisplay ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VGLSwitchPending ; 
 int /*<<< orphan*/  VGLVDisplay ; 
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
 int /*<<< orphan*/  VT_ACKACQ ; 
 int /*<<< orphan*/  VT_RELDISP ; 
 int /*<<< orphan*/  VT_TRUE ; 
#define  V_INFO_MM_DIRECT 131 
#define  V_INFO_MM_PACKED 130 
#define  V_INFO_MM_PLANAR 129 
#define  V_INFO_MM_VGAX 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13()
{
  if (VGLAbortPending) {
    FUNC1();
    FUNC8(0);
  }
  while (VGLSwitchPending) {
    VGLSwitchPending = 0;
    if (VGLOnDisplay) {
      if (VGLModeInfo.vi_mem_model != V_INFO_MM_DIRECT)
        FUNC9(0, KDENABIO, 0);
      FUNC9(0, KDSETMODE, KD_GRAPHICS);
      FUNC9(0, VGLMode, 0);
      VGLCurWindow = 0;
      VGLMem = (byte*)FUNC10(0, VGLAdpInfo.va_window_size, PROT_READ|PROT_WRITE,
			   MAP_FILE | MAP_SHARED, 0, 0);

      /* XXX: what if mmap() has failed! */
      VGLDisplay->Type = VIDBUF8;	/* XXX */
      switch (VGLModeInfo.vi_mem_model) {
      case V_INFO_MM_PLANAR:
	if (VGLModeInfo.vi_depth == 4 && VGLModeInfo.vi_planes == 4) {
	  if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
	    VGLDisplay->Type = VIDBUF4S;
	  else
	    VGLDisplay->Type = VIDBUF4;
	} else {
	  /* shouldn't be happening */
	}
        break;
      case V_INFO_MM_PACKED:
	if (VGLModeInfo.vi_depth == 8) {
	  if (VGLBufSize/VGLModeInfo.vi_planes > VGLAdpInfo.va_window_size)
	    VGLDisplay->Type = VIDBUF8S;
	  else
	    VGLDisplay->Type = VIDBUF8;
	}
        break;
      case V_INFO_MM_VGAX:
	VGLDisplay->Type = VIDBUF8X;
	break;
      case V_INFO_MM_DIRECT:
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
	  /* shouldn't be happening */
          break;
        }
      default:
	/* shouldn't be happening */
        break;
      }

      VGLDisplay->Bitmap = VGLMem;
      VGLDisplay->Xsize = VGLModeInfo.vi_width;
      VGLDisplay->Ysize = VGLModeInfo.vi_height;
      FUNC7(VGLDisplay, VGLDisplay->VXsize, VGLDisplay->VYsize);
      FUNC4();
      FUNC5();
      FUNC2();
      FUNC3(VGLDisplay, VGLDisplay->Xorigin, VGLDisplay->Yorigin);
      FUNC0(&VGLVDisplay, 0, 0, VGLDisplay, 0, 0, 
                    VGLDisplay->VXsize, VGLDisplay->VYsize);
      FUNC6();
      FUNC9(0, VT_RELDISP, VT_ACKACQ);
    }
    else {
      VGLMem = MAP_FAILED;
      FUNC11(VGLDisplay->Bitmap, VGLAdpInfo.va_window_size);
      FUNC9(0, VGLOldMode, 0);
      FUNC9(0, KDSETMODE, KD_TEXT);
      if (VGLModeInfo.vi_mem_model != V_INFO_MM_DIRECT)
        FUNC9(0, KDDISABIO, 0);
      FUNC9(0, VT_RELDISP, VT_TRUE);
      VGLDisplay->Bitmap = VGLBuf;
      VGLDisplay->Type = MEMBUF;
      VGLDisplay->Xsize = VGLDisplay->VXsize;
      VGLDisplay->Ysize = VGLDisplay->VYsize;
      while (!VGLOnDisplay) FUNC12();
    }
  }
}