
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int rctrl; } ;


 int RCTRL_MPROM ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_dtsec_set_mc_promisc(struct dtsec_regs *regs, bool enable)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->rctrl);

 if (enable)
  tmp |= RCTRL_MPROM;
 else
  tmp &= ~RCTRL_MPROM;

 iowrite32be(tmp, &regs->rctrl);
}
