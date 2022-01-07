
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int cur_rh; int cur_mod; } ;


 int decode_and_fetch_long (struct x86emu*) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_long_register (struct x86emu*) ;
 int div_long (struct x86emu*,int ) ;
 int fetch_data_long (struct x86emu*,int ) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int fetch_long_imm (struct x86emu*) ;
 int idiv_long (struct x86emu*,int ) ;
 int imul_long (struct x86emu*,int ) ;
 int mul_long (struct x86emu*,int ) ;
 int neg_long (struct x86emu*,int ) ;
 int test_long (struct x86emu*,int ,int ) ;
 int write_back_long (struct x86emu*,int ) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp32_opcF7_word_RM(struct x86emu *emu)
{
 uint32_t destval, srcval;



 fetch_decode_modrm(emu);
 if (emu->cur_rh == 1)
  x86emu_halt_sys(emu);

 if (emu->cur_rh == 0) {
  if (emu->cur_mod != 3) {
   uint32_t destoffset;

   destoffset = decode_rl_address(emu);
   srcval = fetch_long_imm(emu);
   destval = fetch_data_long(emu, destoffset);
  } else {
   srcval = fetch_long_imm(emu);
   destval = *decode_rl_long_register(emu);
  }
  test_long(emu, destval, srcval);
  return;
 }
 destval = decode_and_fetch_long(emu);
 switch (emu->cur_rh) {
 case 2:
  destval = ~destval;
  write_back_long(emu, destval);
  break;
 case 3:
  destval = neg_long(emu, destval);
  write_back_long(emu, destval);
  break;
 case 4:
  mul_long(emu, destval);
  break;
 case 5:
  imul_long(emu, destval);
  break;
 case 6:
  div_long(emu, destval);
  break;
 case 7:
  idiv_long(emu, destval);
  break;
 }
}
