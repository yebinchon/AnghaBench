
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fman_rg {TYPE_1__* bmi_rg; TYPE_2__* qmi_rg; } ;
typedef enum fman_exceptions { ____Placeholder_fman_exceptions } fman_exceptions ;
struct TYPE_4__ {int fmqm_eif; int fmqm_if; } ;
struct TYPE_3__ {int fmbm_ifr; } ;


 int BMI_ERR_INTR_EN_DISPATCH_RAM_ECC ;
 int BMI_ERR_INTR_EN_LIST_RAM_ECC ;
 int BMI_ERR_INTR_EN_STATISTICS_RAM_ECC ;
 int BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC ;







 int QMI_ERR_INTR_EN_DEQ_FROM_DEF ;
 int QMI_ERR_INTR_EN_DOUBLE_ECC ;
 int QMI_INTR_EN_SINGLE_ECC ;
 int iowrite32be (int ,int *) ;

void fman_force_intr(struct fman_rg *fman_rg,
  enum fman_exceptions exception)
{
 switch (exception) {
 case 130:
  iowrite32be(QMI_ERR_INTR_EN_DEQ_FROM_DEF,
    &fman_rg->qmi_rg->fmqm_eif);
  break;
 case 128:
  iowrite32be(QMI_INTR_EN_SINGLE_ECC,
    &fman_rg->qmi_rg->fmqm_if);
  break;
 case 129:
  iowrite32be(QMI_ERR_INTR_EN_DOUBLE_ECC,
    &fman_rg->qmi_rg->fmqm_eif);
  break;
 case 133:
  iowrite32be(BMI_ERR_INTR_EN_LIST_RAM_ECC,
    &fman_rg->bmi_rg->fmbm_ifr);
  break;
 case 131:
  iowrite32be(BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC,
    &fman_rg->bmi_rg->fmbm_ifr);
  break;
 case 132:
  iowrite32be(BMI_ERR_INTR_EN_STATISTICS_RAM_ECC,
    &fman_rg->bmi_rg->fmbm_ifr);
  break;
 case 134:
  iowrite32be(BMI_ERR_INTR_EN_DISPATCH_RAM_ECC,
    &fman_rg->bmi_rg->fmbm_ifr);
  break;
 default:
  break;
 }
}
