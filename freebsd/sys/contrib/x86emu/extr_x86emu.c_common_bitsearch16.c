
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_ZF ;
 int decode_and_fetch_word (struct x86emu*) ;
 int* decode_rh_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
common_bitsearch16(struct x86emu *emu, int diff)
{
 uint16_t srcval, *dstreg;

 fetch_decode_modrm(emu);
 dstreg = decode_rh_word_register(emu);
 srcval = decode_and_fetch_word(emu);
 CONDITIONAL_SET_FLAG(srcval == 0, F_ZF);
 for (*dstreg = 0; *dstreg < 16; *dstreg += diff) {
  if ((srcval >> *dstreg) & 1)
   break;
 }
}
