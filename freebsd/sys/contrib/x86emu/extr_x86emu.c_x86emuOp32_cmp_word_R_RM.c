
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int cmp_long (struct x86emu*,int ,int ) ;
 int decode_and_fetch_long (struct x86emu*) ;
 int * decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp32_cmp_word_R_RM(struct x86emu *emu)
{
 uint32_t srcval, *destreg;

 fetch_decode_modrm(emu);
 destreg = decode_rh_long_register(emu);
 srcval = decode_and_fetch_long(emu);
 cmp_long(emu, *destreg, srcval);
}
