
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int dummy; } ;


 int x86emu_intr_dispatch (struct x86emu*,int) ;

__attribute__((used)) static void
x86emuOp_int3(struct x86emu *emu)
{
 x86emu_intr_dispatch(emu, 3);
}
