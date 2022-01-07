
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_FLG; int R_AH; } ;
struct x86emu {TYPE_1__ x86; } ;



__attribute__((used)) static void
x86emuOp_sahf(struct x86emu *emu)
{

 emu->x86.R_FLG &= 0xffffff00;

 emu->x86.R_FLG |= emu->x86.R_AH;
}
