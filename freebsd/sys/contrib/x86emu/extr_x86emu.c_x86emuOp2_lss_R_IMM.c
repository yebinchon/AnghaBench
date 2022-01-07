
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_SS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int common_load_far_pointer (struct x86emu*,int *) ;

__attribute__((used)) static void
x86emuOp2_lss_R_IMM(struct x86emu *emu)
{
 common_load_far_pointer(emu, &emu->x86.R_SS);
}
