
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct fman_fpm_regs {int fmfp_prc; } ;


 int FPM_PORT_FM_CTL_PORTID_SHIFT ;
 int FPM_PRC_REALSE_STALLED ;
 int iowrite32be (scalar_t__,int *) ;

void fman_resume_stalled_port(struct fman_fpm_regs *fpm_rg, uint8_t port_id)
{
 uint32_t tmp;

 tmp = (uint32_t)((port_id << FPM_PORT_FM_CTL_PORTID_SHIFT) |
    FPM_PRC_REALSE_STALLED);
 iowrite32be(tmp, &fpm_rg->fmfp_prc);
}
