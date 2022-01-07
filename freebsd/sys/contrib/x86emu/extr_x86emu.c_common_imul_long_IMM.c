
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct x86emu {int cur_mod; } ;
typedef int int8_t ;
typedef int int32_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;
 scalar_t__* decode_rh_long_register (struct x86emu*) ;
 scalar_t__ decode_rl_address (struct x86emu*) ;
 scalar_t__* decode_rl_long_register (struct x86emu*) ;
 scalar_t__ fetch_byte_imm (struct x86emu*) ;
 scalar_t__ fetch_data_long (struct x86emu*,scalar_t__) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int fetch_long_imm (struct x86emu*) ;

__attribute__((used)) static void
common_imul_long_IMM(struct x86emu *emu, int byte_imm)
{
 uint32_t srcoffset;
 uint32_t *destreg, srcval;
 int32_t imm;
 uint64_t res;

 fetch_decode_modrm(emu);
 destreg = decode_rh_long_register(emu);
 if (emu->cur_mod != 3) {
  srcoffset = decode_rl_address(emu);
  srcval = fetch_data_long(emu, srcoffset);
 } else {
  srcval = *decode_rl_long_register(emu);
 }

 if (byte_imm)
  imm = (int8_t)fetch_byte_imm(emu);
 else
  imm = fetch_long_imm(emu);
 res = (int32_t)srcval * imm;

 if (res > 0xffffffff) {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 } else {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 }
 *destreg = (uint32_t)res;
}
