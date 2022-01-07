
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_fpm_regs {int fmfp_ee; } ;


 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

uint32_t fman_get_fpm_err_event(struct fman_fpm_regs *fpm_rg)
{
 uint32_t event;

 event = ioread32be(&fpm_rg->fmfp_ee);

 iowrite32be(event, &fpm_rg->fmfp_ee);
 return event;
}
