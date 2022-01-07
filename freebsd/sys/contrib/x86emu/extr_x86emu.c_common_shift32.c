
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int R_CL; } ;
struct x86emu {TYPE_1__ x86; } ;


 int decode_and_fetch_long (struct x86emu*) ;
 int decode_and_fetch_long_imm8 (struct x86emu*,int *) ;
 int * decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int shld_long (struct x86emu*,int ,int ,int ) ;
 int shrd_long (struct x86emu*,int ,int ,int ) ;
 int write_back_long (struct x86emu*,int ) ;

__attribute__((used)) static void
common_shift32(struct x86emu *emu, int shift_left, int use_cl)
{
 uint8_t shift;
 uint32_t destval, *shiftreg;

 fetch_decode_modrm(emu);
 shiftreg = decode_rh_long_register(emu);
 if (use_cl) {
  destval = decode_and_fetch_long(emu);
  shift = emu->x86.R_CL;
 } else {
  destval = decode_and_fetch_long_imm8(emu, &shift);
 }
 if (shift_left)
  destval = shld_long(emu, destval, *shiftreg, shift);
 else
  destval = shrd_long(emu, destval, *shiftreg, shift);
 write_back_long(emu, destval);
}
