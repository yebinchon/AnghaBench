
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_fpm_regs {int fmfp_mxd; } ;


 int iowrite32be (int ,int *) ;

void fman_qmi_disable_dispatch_limit(struct fman_fpm_regs *fpm_rg)
{
 iowrite32be(0, &fpm_rg->fmfp_mxd);
}
