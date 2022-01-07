
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;
typedef int int16_t ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int decode_and_fetch_word_disp (struct x86emu*,int) ;
 int* decode_rh_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int write_back_word (struct x86emu*,int) ;

__attribute__((used)) static void
common_bitstring16(struct x86emu *emu, int op)
{
 int bit;
 uint16_t srcval, *shiftreg, mask;

 fetch_decode_modrm(emu);
 shiftreg = decode_rh_word_register(emu);
 srcval = decode_and_fetch_word_disp(emu, (int16_t) *shiftreg >> 4);
 bit = *shiftreg & 0xF;
 mask = 0x1 << bit;
 CONDITIONAL_SET_FLAG(srcval & mask, F_CF);

 switch (op) {
 case 0:
  break;
 case 1:
  write_back_word(emu, srcval | mask);
  break;
 case 2:
  write_back_word(emu, srcval & ~mask);
  break;
 case 3:
  write_back_word(emu, srcval ^ mask);
  break;
 }
}
