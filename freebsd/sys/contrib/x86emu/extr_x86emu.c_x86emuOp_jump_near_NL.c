
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_OF ;
 int F_SF ;
 int common_jmp_near (struct x86emu*,int) ;

__attribute__((used)) static void
x86emuOp_jump_near_NL(struct x86emu *emu)
{
 int sf, of;

 sf = ACCESS_FLAG(F_SF) != 0;
 of = ACCESS_FLAG(F_OF) != 0;

 common_jmp_near(emu, sf == of);
}
