
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_fpm_regs {int fm_rcr; } ;


 int FPM_RAM_IRAM_ECC_EN ;
 int FPM_RAM_RAMS_ECC_EN ;
 int FPM_RAM_RAMS_ECC_EN_SRC_SEL ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_disable_rams_ecc(struct fman_fpm_regs *fpm_rg)
{
 uint32_t tmp;

 tmp = ioread32be(&fpm_rg->fm_rcr);
 if (tmp & FPM_RAM_RAMS_ECC_EN_SRC_SEL)
  iowrite32be(tmp & ~FPM_RAM_IRAM_ECC_EN,
    &fpm_rg->fm_rcr);
 else
  iowrite32be(tmp & ~(FPM_RAM_RAMS_ECC_EN | FPM_RAM_IRAM_ECC_EN),
    &fpm_rg->fm_rcr);
}
