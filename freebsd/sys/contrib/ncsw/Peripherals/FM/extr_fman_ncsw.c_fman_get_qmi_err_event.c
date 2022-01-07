
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_qmi_regs {int fmqm_eie; int fmqm_eif; int fmqm_eien; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_qmi_err_event(struct fman_qmi_regs *qmi_rg)
{
 uint32_t event, mask, force;

 event = ioread32be(&qmi_rg->fmqm_eie);
 mask = ioread32be(&qmi_rg->fmqm_eien);
 event &= mask;


 force = ioread32be(&qmi_rg->fmqm_eif);
 if (force & event)
  iowrite32be(force & ~event, &qmi_rg->fmqm_eif);

 iowrite32be(event, &qmi_rg->fmqm_eie);
 return event;
}
