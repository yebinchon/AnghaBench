
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
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

__attribute__((used)) static uint16_t
adc_word(struct x86emu *emu, uint16_t d, uint16_t s)
{
 uint32_t res;
 uint32_t cc;

 if (ACCESS_FLAG(F_CF))
  res = 1 + d + s;
 else
  res = d + s;

 CONDITIONAL_SET_FLAG(res & 0x10000, F_CF);
 CONDITIONAL_SET_FLAG((res & 0xffff) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);


 cc = (s & d) | ((~res) & (s | d));
 CONDITIONAL_SET_FLAG(XOR2(cc >> 14), F_OF);
 CONDITIONAL_SET_FLAG(cc & 0x8, F_AF);
 return (uint16_t) res;
}
