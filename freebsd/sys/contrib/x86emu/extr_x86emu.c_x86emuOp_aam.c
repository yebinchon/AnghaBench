
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int R_AL; int R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int aam_word (struct x86emu*,int ) ;
 int fetch_byte_imm (struct x86emu*) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_aam(struct x86emu *emu)
{
 uint8_t a;

 a = fetch_byte_imm(emu);
 if (a != 10) {

  x86emu_halt_sys(emu);
 }

 emu->x86.R_AX = aam_word(emu, emu->x86.R_AL);
}
