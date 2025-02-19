
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int SET_FLAG (int ) ;

__attribute__((used)) static uint32_t
sar_long(struct x86emu *emu, uint32_t d, uint8_t s)
{
 uint32_t cnt, res, cf, mask, sf;

 sf = d & 0x80000000;
 cnt = s % 32;
 res = d;
 if (cnt > 0 && cnt < 32) {
  mask = (1 << (32 - cnt)) - 1;
  cf = d & (1 << (cnt - 1));
  res = (d >> cnt) & mask;
  CONDITIONAL_SET_FLAG(cf, F_CF);
  if (sf) {
   res |= ~mask;
  }
  CONDITIONAL_SET_FLAG((res & 0xffffffff) == 0, F_ZF);
  CONDITIONAL_SET_FLAG(res & 0x80000000, F_SF);
  CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
 } else if (cnt >= 32) {
  if (sf) {
   res = 0xffffffff;
   SET_FLAG(F_CF);
   CLEAR_FLAG(F_ZF);
   SET_FLAG(F_SF);
   SET_FLAG(F_PF);
  } else {
   res = 0;
   CLEAR_FLAG(F_CF);
   SET_FLAG(F_ZF);
   CLEAR_FLAG(F_SF);
   CLEAR_FLAG(F_PF);
  }
 }
 return res;
}
