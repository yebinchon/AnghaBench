
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct x86emu {int dummy; } ;
typedef int int16_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;
 scalar_t__ decode_and_fetch_word (struct x86emu*) ;
 scalar_t__* decode_rh_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_16_imul_R_RM(struct x86emu *emu)
{
 uint16_t *destreg, srcval;
 uint32_t res;

 fetch_decode_modrm(emu);
 destreg = decode_rh_word_register(emu);
 srcval = decode_and_fetch_word(emu);
 res = (int16_t) * destreg * (int16_t)srcval;
 if (res > 0xFFFF) {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 } else {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 }
 *destreg = (uint16_t) res;
}
