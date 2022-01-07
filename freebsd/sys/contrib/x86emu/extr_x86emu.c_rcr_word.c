
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_OF ;
 int XOR2 (int) ;

__attribute__((used)) static uint16_t
rcr_word(struct x86emu *emu, uint16_t d, uint8_t s)
{
 uint32_t res, cnt;
 uint32_t mask, cf, ocf = 0;


 res = d;
 if ((cnt = s % 17) != 0) {
  if (cnt == 1) {
   cf = d & 0x1;
   ocf = ACCESS_FLAG(F_CF) != 0;
  } else
   cf = (d >> (cnt - 1)) & 0x1;
  mask = (1 << (16 - cnt)) - 1;
  res = (d >> cnt) & mask;
  res |= (d << (17 - cnt));
  if (ACCESS_FLAG(F_CF)) {
   res |= 1 << (16 - cnt);
  }
  CONDITIONAL_SET_FLAG(cf, F_CF);
  if (cnt == 1) {
   CONDITIONAL_SET_FLAG(XOR2(ocf + ((d >> 14) & 0x2)),
       F_OF);
  }
 }
 return (uint16_t) res;
}
