
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fman_qmi_regs {int fmqm_gc; } ;


 int QMI_CFG_DEQ_MASK ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_set_qmi_deq_th(struct fman_qmi_regs *qmi_rg, uint8_t val)
{
 uint32_t tmp_reg;

 tmp_reg = ioread32be(&qmi_rg->fmqm_gc);
 tmp_reg &= ~QMI_CFG_DEQ_MASK;
 tmp_reg |= (uint32_t)val;
 iowrite32be(tmp_reg, &qmi_rg->fmqm_gc);
}
