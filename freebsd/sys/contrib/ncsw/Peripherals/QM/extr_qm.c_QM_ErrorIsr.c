
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ guestId; int h_App; int (* f_Exception ) (int ,int ) ;TYPE_1__* p_QmRegs; } ;
typedef TYPE_2__ t_Qm ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int err_isr; int err_ier; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int GET_UINT32 (int ) ;
 scalar_t__ NCSW_MASTER_ID ;
 int QM_EX_CORENET_INITIATOR_DATA ;
 int QM_EX_CORENET_INVALID_TARGET_TRANSACTION ;
 int QM_EX_CORENET_TARGET_DATA ;
 int QM_EX_DEQUEUE_DCP ;
 int QM_EX_DEQUEUE_FQ ;
 int QM_EX_DEQUEUE_QUEUE ;
 int QM_EX_DEQUEUE_SOURCE ;
 int QM_EX_ENQUEUE_CHANNEL ;
 int QM_EX_ENQUEUE_OVERFLOW ;
 int QM_EX_ENQUEUE_QUEUE ;
 int QM_EX_ENQUEUE_STATE ;
 int QM_EX_INVALID_COMMAND ;
 int QM_EX_MULTI_ECC ;
 int QM_EX_PFDR_ENQUEUE_BLOCKED ;
 int QM_EX_PFDR_THRESHOLD ;
 int QM_EX_SINGLE_ECC ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN (TYPE_2__*,int ) ;
 int WARNING ;
 int WRITE_UINT32 (int ,int) ;
 int e_QM_EX_CORENET_INITIATOR_DATA ;
 int e_QM_EX_CORENET_INVALID_TARGET_TRANSACTION ;
 int e_QM_EX_CORENET_TARGET_DATA ;
 int e_QM_EX_DEQUEUE_DCP ;
 int e_QM_EX_DEQUEUE_FQ ;
 int e_QM_EX_DEQUEUE_QUEUE ;
 int e_QM_EX_DEQUEUE_SOURCE ;
 int e_QM_EX_ENQUEUE_CHANNEL ;
 int e_QM_EX_ENQUEUE_OVERFLOW ;
 int e_QM_EX_ENQUEUE_QUEUE ;
 int e_QM_EX_ENQUEUE_STATE ;
 int e_QM_EX_INVALID_COMMAND ;
 int e_QM_EX_MULTI_ECC ;
 int e_QM_EX_PFDR_ENQUEUE_BLOCKED ;
 int e_QM_EX_PFDR_THRESHOLD ;
 int e_QM_EX_SINGLE_ECC ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int ) ;
 int stub13 (int ,int ) ;
 int stub14 (int ,int ) ;
 int stub15 (int ,int ) ;
 int stub16 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

void QM_ErrorIsr(t_Handle h_Qm)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;
    uint32_t tmpReg;

    SANITY_CHECK_RETURN(p_Qm, E_INVALID_HANDLE);

    if (p_Qm->guestId != NCSW_MASTER_ID)
    {
        REPORT_ERROR(WARNING, E_INVALID_OPERATION, ("Master Only"));
        return;
    }

    tmpReg = GET_UINT32(p_Qm->p_QmRegs->err_isr);
    tmpReg &= GET_UINT32(p_Qm->p_QmRegs->err_ier);
    WRITE_UINT32(p_Qm->p_QmRegs->err_isr, tmpReg);

    if (tmpReg & QM_EX_CORENET_INITIATOR_DATA)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_CORENET_INITIATOR_DATA);
    if (tmpReg & QM_EX_CORENET_TARGET_DATA)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_CORENET_TARGET_DATA);
    if (tmpReg & QM_EX_CORENET_INVALID_TARGET_TRANSACTION)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_CORENET_INVALID_TARGET_TRANSACTION);
    if (tmpReg & QM_EX_PFDR_THRESHOLD)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_PFDR_THRESHOLD);
    if (tmpReg & QM_EX_MULTI_ECC)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_MULTI_ECC);
    if (tmpReg & QM_EX_SINGLE_ECC)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_SINGLE_ECC);
    if (tmpReg & QM_EX_PFDR_ENQUEUE_BLOCKED)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_PFDR_ENQUEUE_BLOCKED);
    if (tmpReg & QM_EX_INVALID_COMMAND)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_INVALID_COMMAND);
    if (tmpReg & QM_EX_DEQUEUE_DCP)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_DEQUEUE_DCP);
    if (tmpReg & QM_EX_DEQUEUE_FQ)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_DEQUEUE_FQ);
    if (tmpReg & QM_EX_DEQUEUE_SOURCE)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_DEQUEUE_SOURCE);
    if (tmpReg & QM_EX_DEQUEUE_QUEUE)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_DEQUEUE_QUEUE);
    if (tmpReg & QM_EX_ENQUEUE_OVERFLOW)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_ENQUEUE_OVERFLOW);
    if (tmpReg & QM_EX_ENQUEUE_STATE)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_ENQUEUE_STATE);
    if (tmpReg & QM_EX_ENQUEUE_CHANNEL)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_ENQUEUE_CHANNEL);
    if (tmpReg & QM_EX_ENQUEUE_QUEUE)
        p_Qm->f_Exception(p_Qm->h_App, e_QM_EX_ENQUEUE_QUEUE);
}
