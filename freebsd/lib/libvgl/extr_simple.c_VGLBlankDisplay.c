
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {scalar_t__ vi_mem_model; } ;


 int KDDISABIO ;
 int KDENABIO ;
 int VGLBlank ;
 int VGLCheckSwitch () ;
 TYPE_1__ VGLModeInfo ;
 scalar_t__ V_INFO_MM_DIRECT ;
 int inb (int) ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int outb (int,int) ;

void
VGLBlankDisplay(int blank)
{
  byte val;

  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT && ioctl(0, KDENABIO, 0))
    return;
  VGLCheckSwitch();
  outb(0x3C4, 0x01); val = inb(0x3C5); outb(0x3C4, 0x01);
  outb(0x3C5, ((blank) ? (val |= 0x20) : (val &= 0xDF)));
  VGLBlank = blank;
  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT)
    ioctl(0, KDDISABIO, 0);
}
