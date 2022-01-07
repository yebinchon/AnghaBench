
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_OF ;
 int x86emu_intr_dispatch (struct x86emu*,int) ;

__attribute__((used)) static void
x86emuOp_into(struct x86emu *emu)
{
 if (ACCESS_FLAG(F_OF))
  x86emu_intr_dispatch(emu, 4);
}
