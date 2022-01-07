
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;

__attribute__((used)) static void
test_long(struct x86emu *emu, uint32_t d, uint32_t s)
{
 uint32_t res;

 res = d & s;

 CLEAR_FLAG(F_OF);
 CONDITIONAL_SET_FLAG(res & 0x80000000, F_SF);
 CONDITIONAL_SET_FLAG(res == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);

 CLEAR_FLAG(F_CF);
}
