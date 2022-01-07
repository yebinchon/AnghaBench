
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_qmi_regs {int fmqm_ie; int fmqm_if; int fmqm_ien; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_qmi_event(struct fman_qmi_regs *qmi_rg)
{
 uint32_t event, mask, force;

 event = ioread32be(&qmi_rg->fmqm_ie);
 mask = ioread32be(&qmi_rg->fmqm_ien);
 event &= mask;

 force = ioread32be(&qmi_rg->fmqm_if);
 if (force & event)
  iowrite32be(force & ~event, &qmi_rg->fmqm_if);

 iowrite32be(event, &qmi_rg->fmqm_ie);
 return event;
}
