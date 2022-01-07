
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_regs {int tctrl; } ;


 int DTSEC_TCTRL_GTS ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_start_tx(struct dtsec_regs *regs)
{

 iowrite32be(ioread32be(&regs->tctrl) & ~DTSEC_TCTRL_GTS, &regs->tctrl);
}
