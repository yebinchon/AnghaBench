
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_mii_reg {int miimcfg; } ;


 int MIIMCFG_RESET_MGMT ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_mii_reset(struct dtsec_mii_reg *regs)
{

 iowrite32be(ioread32be(&regs->miimcfg) | MIIMCFG_RESET_MGMT,
   &regs->miimcfg);
 iowrite32be(ioread32be(&regs->miimcfg) & ~MIIMCFG_RESET_MGMT,
   &regs->miimcfg);
}
