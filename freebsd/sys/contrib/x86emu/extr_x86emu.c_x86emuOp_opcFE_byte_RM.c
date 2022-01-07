
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int cur_mod; int cur_rh; } ;


 int dec_byte (struct x86emu*,int ) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_byte_register (struct x86emu*) ;
 int fetch_data_byte (struct x86emu*,int ) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int inc_byte (struct x86emu*,int ) ;
 int store_data_byte (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp_opcFE_byte_RM(struct x86emu *emu)
{
 uint8_t destval;
 uint32_t destoffset;
 uint8_t *destreg;


 fetch_decode_modrm(emu);
 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  switch (emu->cur_rh) {
  case 0:
   destval = fetch_data_byte(emu, destoffset);
   destval = inc_byte(emu, destval);
   store_data_byte(emu, destoffset, destval);
   break;
  case 1:
   destval = fetch_data_byte(emu, destoffset);
   destval = dec_byte(emu, destval);
   store_data_byte(emu, destoffset, destval);
   break;
  }
 } else {
  destreg = decode_rl_byte_register(emu);
  switch (emu->cur_rh) {
  case 0:
   *destreg = inc_byte(emu, *destreg);
   break;
  case 1:
   *destreg = dec_byte(emu, *destreg);
   break;
  }
 }
}
