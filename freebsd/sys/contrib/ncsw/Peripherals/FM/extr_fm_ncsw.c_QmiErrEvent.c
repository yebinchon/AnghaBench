
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int h_App; int (* f_Exception ) (int ,int ) ;struct fman_qmi_regs* p_FmQmiRegs; } ;
typedef TYPE_1__ t_Fm ;
struct fman_qmi_regs {int dummy; } ;


 int QMI_ERR_INTR_EN_DEQ_FROM_DEF ;
 int QMI_ERR_INTR_EN_DOUBLE_ECC ;
 int e_FM_EX_QMI_DEQ_FROM_UNKNOWN_PORTID ;
 int e_FM_EX_QMI_DOUBLE_ECC ;
 int fman_get_qmi_err_event (struct fman_qmi_regs*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void QmiErrEvent(t_Fm *p_Fm)
{
    uint32_t event;
    struct fman_qmi_regs *qmi_rg = p_Fm->p_FmQmiRegs;

    event = fman_get_qmi_err_event(qmi_rg);

    if (event & QMI_ERR_INTR_EN_DOUBLE_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_QMI_DOUBLE_ECC);
    if (event & QMI_ERR_INTR_EN_DEQ_FROM_DEF)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_QMI_DEQ_FROM_UNKNOWN_PORTID);
}
