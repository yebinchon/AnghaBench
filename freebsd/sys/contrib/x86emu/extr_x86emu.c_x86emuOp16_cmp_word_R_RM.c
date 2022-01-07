
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int cmp_word (struct x86emu*,int ,int ) ;
 int decode_and_fetch_word (struct x86emu*) ;
 int * decode_rh_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp16_cmp_word_R_RM(struct x86emu *emu)
{
 uint16_t srcval, *destreg;

 fetch_decode_modrm(emu);
 destreg = decode_rh_word_register(emu);
 srcval = decode_and_fetch_word(emu);
 cmp_word(emu, *destreg, srcval);
}
