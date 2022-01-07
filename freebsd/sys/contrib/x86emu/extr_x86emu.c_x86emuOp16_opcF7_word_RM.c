
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int cur_rh; int cur_mod; } ;


 int decode_and_fetch_word (struct x86emu*) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_word_register (struct x86emu*) ;
 int div_word (struct x86emu*,int ) ;
 int fetch_data_word (struct x86emu*,int ) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int fetch_word_imm (struct x86emu*) ;
 int idiv_word (struct x86emu*,int ) ;
 int imul_word (struct x86emu*,int ) ;
 int mul_word (struct x86emu*,int ) ;
 int neg_word (struct x86emu*,int ) ;
 int test_word (struct x86emu*,int ,int ) ;
 int write_back_word (struct x86emu*,int ) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp16_opcF7_word_RM(struct x86emu *emu)
{
 uint16_t destval, srcval;



 fetch_decode_modrm(emu);
 if (emu->cur_rh == 1)
  x86emu_halt_sys(emu);

 if (emu->cur_rh == 0) {
  if (emu->cur_mod != 3) {
   uint32_t destoffset;

   destoffset = decode_rl_address(emu);
   srcval = fetch_word_imm(emu);
   destval = fetch_data_word(emu, destoffset);
  } else {
   srcval = fetch_word_imm(emu);
   destval = *decode_rl_word_register(emu);
  }
  test_word(emu, destval, srcval);
  return;
 }
 destval = decode_and_fetch_word(emu);
 switch (emu->cur_rh) {
 case 2:
  destval = ~destval;
  write_back_word(emu, destval);
  break;
 case 3:
  destval = neg_word(emu, destval);
  write_back_word(emu, destval);
  break;
 case 4:
  mul_word(emu, destval);
  break;
 case 5:
  imul_word(emu, destval);
  break;
 case 6:
  div_word(emu, destval);
  break;
 case 7:
  idiv_word(emu, destval);
  break;
 }
}
