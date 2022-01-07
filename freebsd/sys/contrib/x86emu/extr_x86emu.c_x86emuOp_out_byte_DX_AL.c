
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_AL; int R_DX; } ;
struct x86emu {TYPE_1__ x86; int (* emu_outb ) (struct x86emu*,int ,int ) ;} ;


 int stub1 (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp_out_byte_DX_AL(struct x86emu *emu)
{
 (*emu->emu_outb) (emu, emu->x86.R_DX, emu->x86.R_AL);
}
