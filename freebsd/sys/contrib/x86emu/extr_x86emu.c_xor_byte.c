
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
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

__attribute__((used)) static uint8_t
xor_byte(struct x86emu *emu, uint8_t d, uint8_t s)
{
 uint8_t res;

 res = d ^ s;
 CLEAR_FLAG(F_OF);
 CONDITIONAL_SET_FLAG(res & 0x80, F_SF);
 CONDITIONAL_SET_FLAG(res == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res), F_PF);
 CLEAR_FLAG(F_CF);
 CLEAR_FLAG(F_AF);
 return res;
}
