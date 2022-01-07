
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vi_mem_model; } ;


 TYPE_1__ VGLModeInfo ;
 int* VGLSavePaletteBlue ;
 int* VGLSavePaletteGreen ;
 int* VGLSavePaletteRed ;
 scalar_t__ V_INFO_MM_DIRECT ;
 int inb (int) ;
 int outb (int,int) ;

void
VGLRestorePalette()
{
  int i;

  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT)
    return;
  outb(0x3C6, 0xFF);
  inb(0x3DA);
  outb(0x3C8, 0x00);
  for (i=0; i<256; i++) {
    outb(0x3C9, VGLSavePaletteRed[i]);
    inb(0x84);
    outb(0x3C9, VGLSavePaletteGreen[i]);
    inb(0x84);
    outb(0x3C9, VGLSavePaletteBlue[i]);
    inb(0x84);
  }
  inb(0x3DA);
  outb(0x3C0, 0x20);
}
