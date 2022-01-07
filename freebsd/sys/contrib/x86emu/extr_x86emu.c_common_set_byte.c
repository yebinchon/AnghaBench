
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int cur_mod; } ;


 int decode_rl_address (struct x86emu*) ;
 int* decode_rl_byte_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int store_data_byte (struct x86emu*,int ,int) ;

__attribute__((used)) static void
common_set_byte(struct x86emu *emu, int cond)
{
 uint32_t destoffset;
 uint8_t *destreg, destval;

 fetch_decode_modrm(emu);
 destval = cond ? 0x01 : 0x00;
 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  store_data_byte(emu, destoffset, destval);
 } else {
  destreg = decode_rl_byte_register(emu);
  *destreg = destval;
 }
}
