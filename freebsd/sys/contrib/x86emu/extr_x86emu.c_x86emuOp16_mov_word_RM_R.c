
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int cur_mod; } ;


 int * decode_rh_word_register (struct x86emu*) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int store_data_word (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp16_mov_word_RM_R(struct x86emu *emu)
{
 uint32_t destoffset;
 uint16_t *destreg, srcval;

 fetch_decode_modrm(emu);
 srcval = *decode_rh_word_register(emu);
 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  store_data_word(emu, destoffset, srcval);
 } else {
  destreg = decode_rl_word_register(emu);
  *destreg = srcval;
 }
}
