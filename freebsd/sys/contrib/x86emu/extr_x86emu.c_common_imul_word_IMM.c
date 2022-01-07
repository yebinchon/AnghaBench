
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct x86emu {int cur_mod; } ;
typedef int int8_t ;
typedef int int16_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;
 scalar_t__* decode_rh_word_register (struct x86emu*) ;
 int decode_rl_address (struct x86emu*) ;
 scalar_t__* decode_rl_word_register (struct x86emu*) ;
 scalar_t__ fetch_byte_imm (struct x86emu*) ;
 scalar_t__ fetch_data_word (struct x86emu*,int) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
common_imul_word_IMM(struct x86emu *emu, int byte_imm)
{
 uint32_t srcoffset;
 uint16_t *destreg, srcval;
 int16_t imm;
 uint32_t res;

 fetch_decode_modrm(emu);
 destreg = decode_rh_word_register(emu);
 if (emu->cur_mod != 3) {
  srcoffset = decode_rl_address(emu);
  srcval = fetch_data_word(emu, srcoffset);
 } else {
  srcval = *decode_rl_word_register(emu);
 }

 if (byte_imm)
  imm = (int8_t)fetch_byte_imm(emu);
 else
  imm = fetch_word_imm(emu);
 res = (int16_t)srcval * imm;

 if (res > 0xffff) {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 } else {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 }
 *destreg = (uint16_t) res;
}
