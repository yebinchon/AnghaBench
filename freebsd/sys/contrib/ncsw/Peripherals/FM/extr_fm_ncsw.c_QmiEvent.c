
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int h_App; int (* f_Exception ) (int ,int ) ;struct fman_qmi_regs* p_FmQmiRegs; } ;
typedef TYPE_1__ t_Fm ;
struct fman_qmi_regs {int dummy; } ;


 int QMI_INTR_EN_SINGLE_ECC ;
 int e_FM_EX_QMI_SINGLE_ECC ;
 int fman_get_qmi_event (struct fman_qmi_regs*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void QmiEvent(t_Fm *p_Fm)
{
    uint32_t event;
    struct fman_qmi_regs *qmi_rg = p_Fm->p_FmQmiRegs;

    event = fman_get_qmi_event(qmi_rg);

    if (event & QMI_INTR_EN_SINGLE_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_QMI_SINGLE_ECC);
}
