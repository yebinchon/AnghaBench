
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int SET_FLAG (int ) ;

__attribute__((used)) static uint16_t
aaa_word(struct x86emu *emu, uint16_t d)
{
 uint16_t res;
 if ((d & 0xf) > 0x9 || ACCESS_FLAG(F_AF)) {
  d += 0x6;
  d += 0x100;
  SET_FLAG(F_AF);
  SET_FLAG(F_CF);
 } else {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_AF);
 }
 res = (uint16_t) (d & 0xFF0F);
 CLEAR_FLAG(F_SF);
 CONDITIONAL_SET_FLAG(res == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
 return res;
}
