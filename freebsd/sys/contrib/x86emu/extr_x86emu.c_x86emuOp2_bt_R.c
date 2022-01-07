
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int dummy; } ;


 int common_bitstring (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp2_bt_R(struct x86emu *emu)
{
 common_bitstring(emu, 0);
}
