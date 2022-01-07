
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_fpm_regs {int fmfp_ee; } ;


 int FPM_EV_MASK_DOUBLE_ECC ;
 int FPM_EV_MASK_RELEASE_FM ;
 int FPM_EV_MASK_SINGLE_ECC ;
 int FPM_EV_MASK_STALL ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_resume(struct fman_fpm_regs *fpm_rg)
{
 uint32_t tmp;

 tmp = ioread32be(&fpm_rg->fmfp_ee);

 tmp &= ~(FPM_EV_MASK_DOUBLE_ECC |
   FPM_EV_MASK_STALL |
   FPM_EV_MASK_SINGLE_ECC);
 tmp |= FPM_EV_MASK_RELEASE_FM;

 iowrite32be(tmp, &fpm_rg->fmfp_ee);
}
