
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int p_LowQmPortal; } ;
typedef TYPE_2__ t_QmPortal ;
typedef int t_Error ;
struct qman_fq {scalar_t__ state; int flags; int fqid; } ;
struct qm_mc_result {int verb; scalar_t__ result; } ;
struct TYPE_6__ {int fqid; } ;
struct qm_mc_command {TYPE_1__ alterfq; } ;


 int ASSERT_COND (int) ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FQLOCK (struct qman_fq*) ;
 int FQUNLOCK (struct qman_fq*) ;
 int MINOR ;
 int NCSW_PLOCK (TYPE_2__*) ;
 int PUNLOCK (TYPE_2__*) ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_STATE_CHANGING ;
 int QM_MCC_VERB_ALTER_SCHED ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_ALTER_SCHED ;
 int QM_MCR_VERB_MASK ;
 int RETURN_ERROR (int ,int ,char*) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,int ) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_sched ;

__attribute__((used)) static t_Error qman_schedule_fq(t_QmPortal *p_QmPortal, struct qman_fq *p_Fq)
{
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    uint8_t res;

    ASSERT_COND(p_Fq->state == qman_fq_state_parked);
    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return ERROR_CODE(E_INVALID_VALUE);

    NCSW_PLOCK(p_QmPortal);
    FQLOCK(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_CHANGING) ||
            (p_Fq->state != qman_fq_state_parked)) {
        FQUNLOCK(p_Fq);
        PUNLOCK(p_QmPortal);
        return ERROR_CODE(E_BUSY);
    }
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->alterfq.fqid = p_Fq->fqid;
    qm_mc_commit(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_ALTER_SCHED);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_SCHED);
    res = p_Mcr->result;
    if (res != QM_MCR_RESULT_OK) {
        FQUNLOCK(p_Fq);
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("ALTER_SCHED failed: %s\n", mcr_result_str(res)));
    }
    p_Fq->state = qman_fq_state_sched;

    FQUNLOCK(p_Fq);
    PUNLOCK(p_QmPortal);
    return E_OK;
}
