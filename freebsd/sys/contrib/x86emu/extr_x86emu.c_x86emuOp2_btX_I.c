
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int x86emuOp2_16_btX_I (struct x86emu*) ;
 int x86emuOp2_32_btX_I (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_btX_I(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  x86emuOp2_32_btX_I(emu);
 else
  x86emuOp2_16_btX_I(emu);
}
