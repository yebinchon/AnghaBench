
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int fm_ip_rev_1; } ;


 int FPM_REV1_MAJOR_MASK ;
 int FPM_REV1_MAJOR_SHIFT ;
 int FPM_REV1_MINOR_MASK ;
 int FPM_REV1_MINOR_SHIFT ;
 int ioread32be (int *) ;

void fman_get_revision(struct fman_fpm_regs *fpm_rg,
   uint8_t *major,
   uint8_t *minor)
{
 uint32_t tmp;

 tmp = ioread32be(&fpm_rg->fm_ip_rev_1);
 *major = (uint8_t)((tmp & FPM_REV1_MAJOR_MASK) >> FPM_REV1_MAJOR_SHIFT);
 *minor = (uint8_t)((tmp & FPM_REV1_MINOR_MASK) >> FPM_REV1_MINOR_SHIFT);

}
