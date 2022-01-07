
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_regs {int tctrl; int rctrl; } ;


 int DTSEC_TCTRL_TTSE ;
 int RCTRL_RTSE ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_set_ts(struct dtsec_regs *regs, bool en)
{
 if (en) {
  iowrite32be(ioread32be(&regs->rctrl) | RCTRL_RTSE,
    &regs->rctrl);
  iowrite32be(ioread32be(&regs->tctrl) | DTSEC_TCTRL_TTSE,
    &regs->tctrl);
 } else {
  iowrite32be(ioread32be(&regs->rctrl) & ~RCTRL_RTSE,
    &regs->rctrl);
  iowrite32be(ioread32be(&regs->tctrl) & ~DTSEC_TCTRL_TTSE,
    &regs->tctrl);
 }
}
