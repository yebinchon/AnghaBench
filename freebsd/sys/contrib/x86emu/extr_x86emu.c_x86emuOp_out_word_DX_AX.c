
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int R_AX; int R_DX; int R_EAX; } ;
struct x86emu {TYPE_1__ x86; int (* emu_outw ) (struct x86emu*,int ,int ) ;int (* emu_outl ) (struct x86emu*,int ,int ) ;} ;


 int SYSMODE_PREFIX_DATA ;
 int stub1 (struct x86emu*,int ,int ) ;
 int stub2 (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp_out_word_DX_AX(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  (*emu->emu_outl) (emu, emu->x86.R_DX, emu->x86.R_EAX);
 } else {
  (*emu->emu_outw) (emu, emu->x86.R_DX, emu->x86.R_AX);
 }
}
