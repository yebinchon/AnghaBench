
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {scalar_t__ vi_mem_model; } ;


 int KDDISABIO ;
 int KDENABIO ;
 int VGLBorderColor ;
 int VGLCheckSwitch () ;
 TYPE_1__ VGLModeInfo ;
 scalar_t__ V_INFO_MM_DIRECT ;
 int inb (int) ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int outb (int,int) ;

void
VGLSetBorder(byte color)
{
  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT && ioctl(0, KDENABIO, 0))
    return;
  VGLCheckSwitch();
  inb(0x3DA);
  outb(0x3C0,0x11); outb(0x3C0, color);
  inb(0x3DA);
  outb(0x3C0, 0x20);
  VGLBorderColor = color;
  if (VGLModeInfo.vi_mem_model == V_INFO_MM_DIRECT)
    ioctl(0, KDDISABIO, 0);
}
