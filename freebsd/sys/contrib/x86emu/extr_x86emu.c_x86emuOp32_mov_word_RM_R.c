
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int cur_mod; } ;


 int * decode_rh_long_register (struct x86emu*) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int store_data_long (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp32_mov_word_RM_R(struct x86emu *emu)
{
 uint32_t destoffset;
 uint32_t *destreg, srcval;

 fetch_decode_modrm(emu);
 srcval = *decode_rh_long_register(emu);
 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  store_data_long(emu, destoffset, srcval);
 } else {
  destreg = decode_rl_long_register(emu);
  *destreg = srcval;
 }
}
