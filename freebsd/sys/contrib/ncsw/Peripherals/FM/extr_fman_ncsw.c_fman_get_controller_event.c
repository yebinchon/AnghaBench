
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int * fmfp_cev; int * fmfp_cee; int * fmfp_fcev; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_controller_event(struct fman_fpm_regs *fpm_rg, uint8_t reg_id)
{
 uint32_t event;

 event = ioread32be(&fpm_rg->fmfp_fcev[reg_id]) &
   ioread32be(&fpm_rg->fmfp_cee[reg_id]);
 iowrite32be(event, &fpm_rg->fmfp_cev[reg_id]);

 return event;
}
