
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {scalar_t__ cur_rh; int cur_mod; } ;


 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int fetch_long_imm (struct x86emu*) ;
 int store_data_long (struct x86emu*,int ,int ) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp32_mov_word_RM_IMM(struct x86emu *emu)
{
 uint32_t destoffset;
 uint32_t imm, *destreg;

 fetch_decode_modrm(emu);
 if (emu->cur_rh != 0)
  x86emu_halt_sys(emu);

 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  imm = fetch_long_imm(emu);
  store_data_long(emu, destoffset, imm);
 } else {
  destreg = decode_rl_long_register(emu);
  imm = fetch_long_imm(emu);
  *destreg = imm;
 }
}
