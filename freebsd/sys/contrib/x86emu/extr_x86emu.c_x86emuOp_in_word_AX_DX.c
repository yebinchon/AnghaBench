
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int R_DX; int R_AX; int R_EAX; } ;
struct x86emu {TYPE_1__ x86; int (* emu_inw ) (struct x86emu*,int ) ;int (* emu_inl ) (struct x86emu*,int ) ;} ;


 int SYSMODE_PREFIX_DATA ;
 int stub1 (struct x86emu*,int ) ;
 int stub2 (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_in_word_AX_DX(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  emu->x86.R_EAX = (*emu->emu_inl) (emu, emu->x86.R_DX);
 } else {
  emu->x86.R_AX = (*emu->emu_inw) (emu, emu->x86.R_DX);
 }
}
