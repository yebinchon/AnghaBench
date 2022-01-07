
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int decode_and_fetch_word (struct x86emu*) ;
 int * decode_rh_seg_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_mov_word_SR_RM(struct x86emu *emu)
{
 uint16_t *destreg;

 fetch_decode_modrm(emu);
 destreg = decode_rh_seg_register(emu);
 *destreg = decode_and_fetch_word(emu);






}
