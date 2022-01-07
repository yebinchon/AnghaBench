
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_fpm_regs {int fm_epi; } ;


 int ioread32be (int *) ;

uint32_t fman_get_fpm_error_interrupts(struct fman_fpm_regs *fpm_rg)
{
 return ioread32be(&fpm_rg->fm_epi);
}
