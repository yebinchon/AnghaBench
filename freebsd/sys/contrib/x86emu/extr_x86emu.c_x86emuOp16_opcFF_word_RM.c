
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int cur_mod; int cur_rh; } ;


 int dec_word (struct x86emu*,int ) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_word_register (struct x86emu*) ;
 int fetch_data_word (struct x86emu*,int ) ;
 int inc_word (struct x86emu*,int ) ;
 int push_word (struct x86emu*,int ) ;
 int store_data_word (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp16_opcFF_word_RM(struct x86emu *emu)
{
 uint32_t destoffset = 0;
 uint16_t *destreg;
 uint16_t destval;

 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  destval = fetch_data_word(emu, destoffset);
  switch (emu->cur_rh) {
  case 0:
   destval = inc_word(emu, destval);
   store_data_word(emu, destoffset, destval);
   break;
  case 1:
   destval = dec_word(emu, destval);
   store_data_word(emu, destoffset, destval);
   break;
  case 6:
   push_word(emu, destval);
   break;
  }
 } else {
  destreg = decode_rl_word_register(emu);
  switch (emu->cur_rh) {
  case 0:
   *destreg = inc_word(emu, *destreg);
   break;
  case 1:
   *destreg = dec_word(emu, *destreg);
   break;
  case 6:
   push_word(emu, *destreg);
   break;
  }
 }
}
