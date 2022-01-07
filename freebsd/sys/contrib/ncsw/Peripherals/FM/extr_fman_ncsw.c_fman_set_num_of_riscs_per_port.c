
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int fmfp_prc; } ;


 int FPM_PORT_FM_CTL_PORTID_SHIFT ;
 int FPM_PRC_ORA_FM_CTL_SEL_SHIFT ;
 int FPM_PRT_FM_CTL1 ;
 int FPM_PRT_FM_CTL2 ;
 int iowrite32be (int,int *) ;

void fman_set_num_of_riscs_per_port(struct fman_fpm_regs *fpm_rg,
     uint8_t port_id,
     uint8_t num_fman_ctrls,
     uint32_t or_fman_ctrl)
{
 uint32_t tmp = 0;

 tmp = (uint32_t)(port_id << FPM_PORT_FM_CTL_PORTID_SHIFT);

 if (num_fman_ctrls == 2)
  tmp = FPM_PRT_FM_CTL2 | FPM_PRT_FM_CTL1;

 tmp |= (or_fman_ctrl << FPM_PRC_ORA_FM_CTL_SEL_SHIFT) | or_fman_ctrl;

 iowrite32be(tmp, &fpm_rg->fmfp_prc);
}
