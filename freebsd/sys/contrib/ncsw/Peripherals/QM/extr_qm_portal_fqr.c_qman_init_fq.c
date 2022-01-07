
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
struct qman_fq {scalar_t__ state; int flags; int cgr_groupid; } ;
struct qm_mcc_initfq {int dummy; } ;
struct qm_mc_result {scalar_t__ verb; scalar_t__ result; } ;
struct TYPE_7__ {int fq_ctrl; int cgid; } ;
struct TYPE_8__ {int we_mask; TYPE_1__ fqd; } ;
struct qm_mc_command {TYPE_2__ initfq; } ;


 int ASSERT_COND (int) ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FQLOCK (struct qman_fq*) ;
 int FQUNLOCK (struct qman_fq*) ;
 int MINOR ;
 int Mem2IOCpy32 (void*,struct qm_mcc_initfq*,int) ;
 int NCSW_PLOCK (TYPE_3__*) ;
 int PUNLOCK (TYPE_3__*) ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_STATE_CGR_EN ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_INITFQ_FLAG_SCHED ;
 int QM_FQCTRL_CGE ;
 int QM_INITFQ_WE_CGID ;
 int QM_INITFQ_WE_FQCTRL ;
 int QM_MCC_VERB_INITFQ_PARKED ;
 int QM_MCC_VERB_INITFQ_SCHED ;
 scalar_t__ QM_MCR_RESULT_OK ;
 scalar_t__ QM_MCR_VERB_MASK ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,scalar_t__) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;
 scalar_t__ qman_fq_state_oos ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_sched ;

__attribute__((used)) static t_Error qman_init_fq(t_QmPortal *p_QmPortal,
                            struct qman_fq *p_Fq,
                            uint32_t flags,
                            struct qm_mcc_initfq *p_Opts)
{
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    uint8_t res, myverb = (uint8_t)((flags & QMAN_INITFQ_FLAG_SCHED) ?
        QM_MCC_VERB_INITFQ_SCHED : QM_MCC_VERB_INITFQ_PARKED);

    SANITY_CHECK_RETURN_ERROR((p_Fq->state == qman_fq_state_oos) ||
                              (p_Fq->state == qman_fq_state_parked),
                              E_INVALID_STATE);

    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return ERROR_CODE(E_INVALID_VALUE);

    NCSW_PLOCK(p_QmPortal);
    FQLOCK(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_CHANGING) ||
            ((p_Fq->state != qman_fq_state_oos) &&
                (p_Fq->state != qman_fq_state_parked))) {
        FQUNLOCK(p_Fq);
        PUNLOCK(p_QmPortal);
        return ERROR_CODE(E_BUSY);
    }
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    Mem2IOCpy32((void*)&p_Mcc->initfq, p_Opts, sizeof(struct qm_mcc_initfq));
    qm_mc_commit(p_QmPortal->p_LowQmPortal, myverb);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == myverb);
    res = p_Mcr->result;
    if (res != QM_MCR_RESULT_OK) {
        FQUNLOCK(p_Fq);
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE,("INITFQ failed: %s", mcr_result_str(res)));
    }

    if (p_Mcc->initfq.we_mask & QM_INITFQ_WE_FQCTRL) {
        if (p_Mcc->initfq.fqd.fq_ctrl & QM_FQCTRL_CGE)
            p_Fq->flags |= QMAN_FQ_STATE_CGR_EN;
        else
            p_Fq->flags &= ~QMAN_FQ_STATE_CGR_EN;
    }
    if (p_Mcc->initfq.we_mask & QM_INITFQ_WE_CGID)
        p_Fq->cgr_groupid = p_Mcc->initfq.fqd.cgid;
    p_Fq->state = (flags & QMAN_INITFQ_FLAG_SCHED) ?
            qman_fq_state_sched : qman_fq_state_parked;
    FQUNLOCK(p_Fq);
    PUNLOCK(p_QmPortal);
    return E_OK;
}
