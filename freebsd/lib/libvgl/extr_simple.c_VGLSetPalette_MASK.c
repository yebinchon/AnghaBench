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
typedef  int byte ;
struct TYPE_2__ {scalar_t__ vi_mem_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ VGLModeInfo ; 
 int* VGLSavePaletteBlue ; 
 int* VGLSavePaletteGreen ; 
 int* VGLSavePaletteRed ; 
 scalar_t__ V_INFO_MM_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void
FUNC3(byte *red, byte *green, byte *blue)
{
  int i;
  
  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT)
    return;
  for (i=0; i<256; i++) {
    VGLSavePaletteRed[i] = red[i];
    VGLSavePaletteGreen[i] = green[i];
    VGLSavePaletteBlue[i] = blue[i];
  }
  FUNC0();
  FUNC2(0x3C6, 0xFF);
  FUNC1(0x3DA); 
  FUNC2(0x3C8, 0x00);
  for (i=0; i<256; i++) {
    FUNC2(0x3C9, VGLSavePaletteRed[i]);
    FUNC1(0x84);
    FUNC2(0x3C9, VGLSavePaletteGreen[i]);
    FUNC1(0x84);
    FUNC2(0x3C9, VGLSavePaletteBlue[i]);
    FUNC1(0x84);
  }
  FUNC1(0x3DA);
  FUNC2(0x3C0, 0x20);
}