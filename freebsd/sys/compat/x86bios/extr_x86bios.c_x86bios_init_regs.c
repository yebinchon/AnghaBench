
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86regs {scalar_t__ X86BIOS_R_SP; int X86BIOS_R_SS; } ;


 scalar_t__ X86BIOS_PAGE_SIZE ;
 int X86BIOS_PHYSTOSEG (int ) ;
 int bzero (struct x86regs*,int) ;
 int x86bios_seg_phys ;

void
x86bios_init_regs(struct x86regs *regs)
{

 bzero(regs, sizeof(*regs));
 regs->X86BIOS_R_SS = X86BIOS_PHYSTOSEG(x86bios_seg_phys);
 regs->X86BIOS_R_SP = X86BIOS_PAGE_SIZE - 2;
}
