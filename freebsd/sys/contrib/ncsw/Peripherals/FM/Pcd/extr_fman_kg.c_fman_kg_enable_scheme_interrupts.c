
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_kg_regs {int fmkg_seeer; int fmkg_seer; } ;


 int iowrite32be (int,int *) ;

void fman_kg_enable_scheme_interrupts(struct fman_kg_regs *regs)
{

 iowrite32be(0xFFFFFFFF, &regs->fmkg_seer);
 iowrite32be(0xFFFFFFFF, &regs->fmkg_seeer);
}
