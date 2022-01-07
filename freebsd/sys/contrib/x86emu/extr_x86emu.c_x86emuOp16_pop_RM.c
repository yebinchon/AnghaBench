
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int cur_mod; } ;


 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int pop_word (struct x86emu*) ;
 int store_data_word (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp16_pop_RM(struct x86emu *emu)
{
 uint32_t destoffset;
 uint16_t destval, *destreg;

 fetch_decode_modrm(emu);
 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  destval = pop_word(emu);
  store_data_word(emu, destoffset, destval);
 } else {
  destreg = decode_rl_word_register(emu);
  *destreg = pop_word(emu);
 }
}
