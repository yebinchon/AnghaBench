
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int XOR2 (int) ;

__attribute__((used)) static uint16_t
inc_word(struct x86emu *emu, uint16_t d)
{
 uint32_t res;
 uint32_t cc;

 res = d + 1;
 CONDITIONAL_SET_FLAG((res & 0xffff) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);


 cc = (1 & d) | ((~res) & (1 | d));
 CONDITIONAL_SET_FLAG(XOR2(cc >> 14), F_OF);
 CONDITIONAL_SET_FLAG(cc & 0x8, F_AF);
 return (uint16_t) res;
}
