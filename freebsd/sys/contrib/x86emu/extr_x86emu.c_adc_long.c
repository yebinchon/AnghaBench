
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int XOR2 (int) ;

__attribute__((used)) static uint32_t
adc_long(struct x86emu *emu, uint32_t d, uint32_t s)
{
 uint32_t lo;
 uint32_t hi;
 uint32_t res;
 uint32_t cc;

 if (ACCESS_FLAG(F_CF)) {
  lo = 1 + (d & 0xFFFF) + (s & 0xFFFF);
  res = 1 + d + s;
 } else {
  lo = (d & 0xFFFF) + (s & 0xFFFF);
  res = d + s;
 }
 hi = (lo >> 16) + (d >> 16) + (s >> 16);

 CONDITIONAL_SET_FLAG(hi & 0x10000, F_CF);
 CONDITIONAL_SET_FLAG((res & 0xffffffff) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(res & 0x80000000, F_SF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);


 cc = (s & d) | ((~res) & (s | d));
 CONDITIONAL_SET_FLAG(XOR2(cc >> 30), F_OF);
 CONDITIONAL_SET_FLAG(cc & 0x8, F_AF);
 return res;
}
