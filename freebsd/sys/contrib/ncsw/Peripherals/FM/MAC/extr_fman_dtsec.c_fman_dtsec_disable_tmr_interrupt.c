
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_regs {int tmr_pemask; } ;


 int TMR_PEMASK_TSREEN ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_disable_tmr_interrupt(struct dtsec_regs *regs)
{
 iowrite32be(ioread32be(&regs->tmr_pemask) & ~TMR_PEMASK_TSREEN,
   &regs->tmr_pemask);
}
