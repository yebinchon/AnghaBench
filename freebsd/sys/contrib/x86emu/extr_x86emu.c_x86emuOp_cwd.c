
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int R_EAX; int R_EDX; int R_AX; int R_DX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;

__attribute__((used)) static void
x86emuOp_cwd(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  if (emu->x86.R_EAX & 0x80000000) {
   emu->x86.R_EDX = 0xffffffff;
  } else {
   emu->x86.R_EDX = 0x0;
  }
 } else {
  if (emu->x86.R_AX & 0x8000) {
   emu->x86.R_DX = 0xffff;
  } else {
   emu->x86.R_DX = 0x0;
  }
 }
}
