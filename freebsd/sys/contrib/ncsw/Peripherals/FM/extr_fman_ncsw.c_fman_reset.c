
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_fpm_regs {int fm_rstc; } ;


 int FPM_RSTC_FM_RESET ;
 int iowrite32be (int ,int *) ;

void fman_reset(struct fman_fpm_regs *fpm_rg)
{
 iowrite32be(FPM_RSTC_FM_RESET, &fpm_rg->fm_rstc);
}
