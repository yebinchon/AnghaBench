
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_regs {int rctrl; } ;


 int RCTRL_GRS ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_stop_rx(struct dtsec_regs *regs)
{

 iowrite32be(ioread32be(&regs->rctrl) | RCTRL_GRS, &regs->rctrl);
}
