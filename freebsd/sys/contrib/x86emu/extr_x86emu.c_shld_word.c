
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (unsigned int,int ) ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 unsigned int PARITY (unsigned int) ;
 int SET_FLAG (int ) ;

__attribute__((used)) static uint16_t
shld_word(struct x86emu *emu, uint16_t d, uint16_t fill, uint8_t s)
{
 unsigned int cnt, res, cf;

 if (s < 16) {
  cnt = s % 16;
  if (cnt > 0) {
   res = (d << cnt) | (fill >> (16 - cnt));
   cf = d & (1 << (16 - cnt));
   CONDITIONAL_SET_FLAG(cf, F_CF);
   CONDITIONAL_SET_FLAG((res & 0xffff) == 0, F_ZF);
   CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
   CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
  } else {
   res = d;
  }
  if (cnt == 1) {
   CONDITIONAL_SET_FLAG((((res & 0x8000) == 0x8000) ^
    (ACCESS_FLAG(F_CF) != 0)), F_OF);
  } else {
   CLEAR_FLAG(F_OF);
  }
 } else {
  res = 0;
  CONDITIONAL_SET_FLAG((d << (s - 1)) & 0x8000, F_CF);
  CLEAR_FLAG(F_OF);
  CLEAR_FLAG(F_SF);
  SET_FLAG(F_PF);
  SET_FLAG(F_ZF);
 }
 return (uint16_t) res;
}
