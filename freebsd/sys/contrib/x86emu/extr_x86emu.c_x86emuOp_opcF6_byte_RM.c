
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int cur_rh; } ;


 int decode_and_fetch_byte (struct x86emu*) ;
 int decode_and_fetch_byte_imm8 (struct x86emu*,int *) ;
 int div_byte (struct x86emu*,int ) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int idiv_byte (struct x86emu*,int ) ;
 int imul_byte (struct x86emu*,int ) ;
 int mul_byte (struct x86emu*,int ) ;
 int neg_byte (struct x86emu*,int ) ;
 int test_byte (struct x86emu*,int ,int ) ;
 int write_back_byte (struct x86emu*,int ) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_opcF6_byte_RM(struct x86emu *emu)
{
 uint8_t destval, srcval;



 fetch_decode_modrm(emu);
 if (emu->cur_rh == 1)
  x86emu_halt_sys(emu);

 if (emu->cur_rh == 0) {
  destval = decode_and_fetch_byte_imm8(emu, &srcval);
  test_byte(emu, destval, srcval);
  return;
 }
 destval = decode_and_fetch_byte(emu);
 switch (emu->cur_rh) {
 case 2:
  destval = ~destval;
  write_back_byte(emu, destval);
  break;
 case 3:
  destval = neg_byte(emu, destval);
  write_back_byte(emu, destval);
  break;
 case 4:
  mul_byte(emu, destval);
  break;
 case 5:
  imul_byte(emu, destval);
  break;
 case 6:
  div_byte(emu, destval);
  break;
 case 7:
  idiv_byte(emu, destval);
  break;
 }
}
