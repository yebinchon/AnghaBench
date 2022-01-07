
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int * fmfp_cee; } ;


 int ioread32be (int *) ;

uint32_t fman_get_ctrl_intr(struct fman_fpm_regs *fpm_rg, uint8_t event_reg_id)
{
 return ioread32be(&fpm_rg->fmfp_cee[event_reg_id]);
}
