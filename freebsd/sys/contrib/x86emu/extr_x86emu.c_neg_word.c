
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


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
neg_word(struct x86emu *emu, uint16_t s)
{
 uint16_t res;
 uint16_t bc;

 CONDITIONAL_SET_FLAG(s != 0, F_CF);
 res = (uint16_t) - s;
 CONDITIONAL_SET_FLAG((res & 0xffff) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);






 bc = res | s;
 CONDITIONAL_SET_FLAG(XOR2(bc >> 14), F_OF);
 CONDITIONAL_SET_FLAG(bc & 0x8, F_AF);
 return res;
}
