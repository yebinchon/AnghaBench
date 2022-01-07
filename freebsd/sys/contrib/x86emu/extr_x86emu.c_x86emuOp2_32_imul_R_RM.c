
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct x86emu {int dummy; } ;
typedef int int32_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;
 scalar_t__ decode_and_fetch_long (struct x86emu*) ;
 scalar_t__* decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_32_imul_R_RM(struct x86emu *emu)
{
 uint32_t *destreg, srcval;
 uint64_t res;

 fetch_decode_modrm(emu);
 destreg = decode_rh_long_register(emu);
 srcval = decode_and_fetch_long(emu);
 res = (int32_t) *destreg * (int32_t)srcval;
 if (res > 0xffffffff) {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 } else {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 }
 *destreg = (uint32_t) res;
}
