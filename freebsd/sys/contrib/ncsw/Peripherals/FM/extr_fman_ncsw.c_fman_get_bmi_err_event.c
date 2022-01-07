
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_bmi_regs {int fmbm_ievr; int fmbm_ifr; int fmbm_ier; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_bmi_err_event(struct fman_bmi_regs *bmi_rg)
{
 uint32_t event, mask, force;

 event = ioread32be(&bmi_rg->fmbm_ievr);
 mask = ioread32be(&bmi_rg->fmbm_ier);
 event &= mask;

 force = ioread32be(&bmi_rg->fmbm_ifr);
 if (force & event)
  iowrite32be(force & ~event, &bmi_rg->fmbm_ifr);

 iowrite32be(event, &bmi_rg->fmbm_ievr);
 return event;
}
