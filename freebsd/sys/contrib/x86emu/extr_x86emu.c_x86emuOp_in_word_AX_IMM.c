
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int mode; int R_AX; int R_EAX; } ;
struct x86emu {int (* emu_inw ) (struct x86emu*,scalar_t__) ;TYPE_1__ x86; int (* emu_inl ) (struct x86emu*,scalar_t__) ;} ;


 int SYSMODE_PREFIX_DATA ;
 scalar_t__ fetch_byte_imm (struct x86emu*) ;
 int stub1 (struct x86emu*,scalar_t__) ;
 int stub2 (struct x86emu*,scalar_t__) ;

__attribute__((used)) static void
x86emuOp_in_word_AX_IMM(struct x86emu *emu)
{
 uint8_t port;

 port = (uint8_t) fetch_byte_imm(emu);
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  emu->x86.R_EAX = (*emu->emu_inl) (emu, port);
 } else {
  emu->x86.R_AX = (*emu->emu_inw) (emu, port);
 }
}
