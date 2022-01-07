
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int R_AL; } ;
struct x86emu {int (* emu_inb ) (struct x86emu*,scalar_t__) ;TYPE_1__ x86; } ;


 scalar_t__ fetch_byte_imm (struct x86emu*) ;
 int stub1 (struct x86emu*,scalar_t__) ;

__attribute__((used)) static void
x86emuOp_in_byte_AL_IMM(struct x86emu *emu)
{
 uint8_t port;

 port = (uint8_t) fetch_byte_imm(emu);
 emu->x86.R_AL = (*emu->emu_inb) (emu, port);
}
