
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int p_LowQmPortal; } ;
typedef TYPE_3__ t_QmPortal ;
typedef int t_Error ;
struct qman_fq {scalar_t__ state; int flags; int fqid; } ;
struct TYPE_8__ {int fqs; } ;
struct qm_mc_result {int verb; scalar_t__ result; TYPE_2__ alterfq; } ;
struct TYPE_7__ {int context_b; int fqid; } ;
struct qm_mc_command {TYPE_1__ alterfq; } ;


 int ASSERT_COND (int ) ;
 int E_BUSY ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FQLOCK (struct qman_fq*) ;
 int FQUNLOCK (struct qman_fq*) ;
 int NCSW_PLOCK (TYPE_3__*) ;
 int PUNLOCK (TYPE_3__*) ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_FQ_STATE_NE ;
 int QMAN_FQ_STATE_ORL ;
 scalar_t__ QM_MCC_VERB_ALTER_RETIRE ;
 scalar_t__ QM_MCC_VERB_ALTER_RETIRE_CTXB ;
 int QM_MCR_FQS_NOTEMPTY ;
 int QM_MCR_FQS_ORLPRESENT ;
 scalar_t__ QM_MCR_RESULT_OK ;
 scalar_t__ QM_MCR_RESULT_PENDING ;
 int QM_MCR_VERB_ALTER_RETIRE ;
 int QM_MCR_VERB_ALTER_RETIRE_CTXB ;
 int QM_MCR_VERB_MASK ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int XX_Print (char*,int ) ;
 int aligned_int_from_ptr (struct qman_fq*) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,scalar_t__) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;
 scalar_t__ qman_fq_state_oos ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_retired ;
 scalar_t__ qman_fq_state_sched ;

__attribute__((used)) static t_Error qman_retire_fq(t_QmPortal *p_QmPortal,
                              struct qman_fq *p_Fq,
                              uint32_t *p_Flags,
                              bool drain)
{
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    t_Error err = E_OK;
    uint8_t res;

    SANITY_CHECK_RETURN_ERROR((p_Fq->state == qman_fq_state_parked) ||
                              (p_Fq->state == qman_fq_state_sched),
                              E_INVALID_STATE);

    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return E_INVALID_VALUE;
    NCSW_PLOCK(p_QmPortal);
    FQLOCK(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_CHANGING) ||
            (p_Fq->state == qman_fq_state_retired) ||
                (p_Fq->state == qman_fq_state_oos)) {
        err = E_BUSY;
        goto out;
    }
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->alterfq.fqid = p_Fq->fqid;
    if (drain)
        p_Mcc->alterfq.context_b = aligned_int_from_ptr(p_Fq);
    qm_mc_commit(p_QmPortal->p_LowQmPortal,
                 (uint8_t)((drain)?QM_MCC_VERB_ALTER_RETIRE_CTXB:QM_MCC_VERB_ALTER_RETIRE));
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) ==
                (drain)?QM_MCR_VERB_ALTER_RETIRE_CTXB:QM_MCR_VERB_ALTER_RETIRE);
    res = p_Mcr->result;
    if (res == QM_MCR_RESULT_OK)
    {

        if (p_Mcr->alterfq.fqs & QM_MCR_FQS_NOTEMPTY)
            p_Fq->flags |= QMAN_FQ_STATE_NE;
        if (p_Mcr->alterfq.fqs & QM_MCR_FQS_ORLPRESENT)
            p_Fq->flags |= QMAN_FQ_STATE_ORL;
        p_Fq->state = qman_fq_state_retired;
    }
    else if (res == QM_MCR_RESULT_PENDING)
        p_Fq->flags |= QMAN_FQ_STATE_CHANGING;
    else {
        XX_Print("ALTER_RETIRE failed: %s\n",
                mcr_result_str(res));
        err = E_INVALID_STATE;
    }
    if (p_Flags)
        *p_Flags = p_Fq->flags;
out:
    FQUNLOCK(p_Fq);
    PUNLOCK(p_QmPortal);
    return err;
}
