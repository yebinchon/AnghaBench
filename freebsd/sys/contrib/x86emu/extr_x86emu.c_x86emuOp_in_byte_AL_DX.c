
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_DX; int R_AL; } ;
struct x86emu {TYPE_1__ x86; int (* emu_inb ) (struct x86emu*,int ) ;} ;


 int stub1 (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_in_byte_AL_DX(struct x86emu *emu)
{
 emu->x86.R_AL = (*emu->emu_inb) (emu, emu->x86.R_DX);
}
