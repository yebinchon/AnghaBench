
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;
typedef int int16_t ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int decode_and_fetch_long_disp (struct x86emu*,int) ;
 int* decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int write_back_long (struct x86emu*,int) ;

__attribute__((used)) static void
common_bitstring32(struct x86emu *emu, int op)
{
 int bit;
 uint32_t srcval, *shiftreg, mask;

 fetch_decode_modrm(emu);
 shiftreg = decode_rh_long_register(emu);
 srcval = decode_and_fetch_long_disp(emu, (int16_t) *shiftreg >> 5);
 bit = *shiftreg & 0x1F;
 mask = 0x1 << bit;
 CONDITIONAL_SET_FLAG(srcval & mask, F_CF);

 switch (op) {
 case 0:
  break;
 case 1:
  write_back_long(emu, srcval | mask);
  break;
 case 2:
  write_back_long(emu, srcval & ~mask);
  break;
 case 3:
  write_back_long(emu, srcval ^ mask);
  break;
 }
}
