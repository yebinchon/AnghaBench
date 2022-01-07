
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;

__attribute__((used)) static uint16_t
or_word(struct x86emu *emu, uint16_t d, uint16_t s)
{
 uint16_t res;

 res = d | s;

 CLEAR_FLAG(F_OF);
 CLEAR_FLAG(F_CF);
 CLEAR_FLAG(F_AF);
 CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
 CONDITIONAL_SET_FLAG(res == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
 return res;
}
