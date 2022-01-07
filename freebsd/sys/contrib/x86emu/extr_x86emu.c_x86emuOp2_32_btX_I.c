
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int cur_rh; } ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int decode_and_fetch_long_imm8 (struct x86emu*,int*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int write_back_long (struct x86emu*,int) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_32_btX_I(struct x86emu *emu)
{
 int bit;
 uint32_t srcval, mask;
 uint8_t shift;

 fetch_decode_modrm(emu);
 if (emu->cur_rh < 4)
  x86emu_halt_sys(emu);

 srcval = decode_and_fetch_long_imm8(emu, &shift);
 bit = shift & 0x1F;
 mask = (0x1 << bit);

 switch (emu->cur_rh) {
 case 5:
  write_back_long(emu, srcval | mask);
  break;
 case 6:
  write_back_long(emu, srcval & ~mask);
  break;
 case 7:
  write_back_long(emu, srcval ^ mask);
  break;
 }
 CONDITIONAL_SET_FLAG(srcval & mask, F_CF);
}
