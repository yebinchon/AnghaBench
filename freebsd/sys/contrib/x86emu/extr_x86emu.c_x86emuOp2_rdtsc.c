
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_EAX; int R_EDX; } ;
struct x86emu {int cur_cycles; TYPE_1__ x86; } ;



__attribute__((used)) static void
x86emuOp2_rdtsc(struct x86emu *emu)
{
 emu->x86.R_EAX = emu->cur_cycles & 0xffffffff;
 emu->x86.R_EDX = emu->cur_cycles >> 32;
}
