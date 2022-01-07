
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int cur_mod; int cur_offset; } ;


 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_byte_register (struct x86emu*) ;
 int fetch_byte_imm (struct x86emu*) ;
 int fetch_data_byte (struct x86emu*,int ) ;

uint8_t
decode_and_fetch_byte_imm8(struct x86emu *emu, uint8_t *imm)
{
 if (emu->cur_mod != 3) {
  emu->cur_offset = decode_rl_address(emu);
  *imm = fetch_byte_imm(emu);
  return fetch_data_byte(emu, emu->cur_offset);
 } else {
  *imm = fetch_byte_imm(emu);
  return *decode_rl_byte_register(emu);
 }
}
