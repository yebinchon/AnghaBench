
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fman_qmi_regs {int fmqm_gc; } ;


 int ioread32be (int *) ;

uint8_t fman_get_qmi_enq_th(struct fman_qmi_regs *qmi_rg)
{
 return (uint8_t)(ioread32be(&qmi_rg->fmqm_gc) >> 8);
}
