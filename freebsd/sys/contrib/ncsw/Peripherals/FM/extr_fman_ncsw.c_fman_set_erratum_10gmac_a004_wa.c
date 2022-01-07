
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_fpm_regs {int fmfp_extc; } ;


 int DELAY (int) ;
 int EBUSY ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_set_erratum_10gmac_a004_wa(struct fman_fpm_regs *fpm_rg)
{
 int timeout = 100;

 iowrite32be(0x40000000, &fpm_rg->fmfp_extc);

 while ((ioread32be(&fpm_rg->fmfp_extc) & 0x40000000) && --timeout)
  DELAY(10);

 if (!timeout)
  return -EBUSY;
 return 0;
}
