
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int * fmfp_cee; } ;


 int iowrite32be (int ,int *) ;

void fman_set_ctrl_intr(struct fman_fpm_regs *fpm_rg,
   uint8_t event_reg_id,
   uint32_t enable_events)
{
 iowrite32be(enable_events, &fpm_rg->fmfp_cee[event_reg_id]);
}
