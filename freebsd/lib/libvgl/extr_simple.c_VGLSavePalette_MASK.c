#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ vi_mem_model; } ;

/* Variables and functions */
 TYPE_1__ VGLModeInfo ; 
 void** VGLSavePaletteBlue ; 
 void** VGLSavePaletteGreen ; 
 void** VGLSavePaletteRed ; 
 scalar_t__ V_INFO_MM_DIRECT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void
FUNC2()
{
  int i;

  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT)
    return;
  FUNC1(0x3C6, 0xFF);
  FUNC0(0x3DA);
  FUNC1(0x3C7, 0x00);
  for (i=0; i<256; i++) {
    VGLSavePaletteRed[i] = FUNC0(0x3C9);
    FUNC0(0x84);
    VGLSavePaletteGreen[i] = FUNC0(0x3C9);
    FUNC0(0x84);
    VGLSavePaletteBlue[i] = FUNC0(0x3C9);
    FUNC0(0x84);
  }
  FUNC0(0x3DA);
  FUNC1(0x3C0, 0x20);
}