
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct qman_fq {int flags; int state; } ;
struct TYPE_2__ {int fqs; } ;
struct qm_mr_entry {TYPE_1__ fq; } ;


 int ASSERT_COND (int) ;
 int FQLOCK (struct qman_fq*) ;
 int FQUNLOCK (struct qman_fq*) ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_FQ_STATE_NE ;
 int QMAN_FQ_STATE_ORL ;
 int QM_MR_FQS_NOTEMPTY ;
 int QM_MR_FQS_ORLPRESENT ;



 int qman_fq_state_parked ;
 int qman_fq_state_retired ;
 int qman_fq_state_sched ;

__attribute__((used)) static __inline__ void fq_state_change(struct qman_fq *p_Fq,
                                       struct qm_mr_entry *p_Msg,
                                       uint8_t verb)
{
    FQLOCK(p_Fq);
    switch(verb) {
        case 129:
            ASSERT_COND(p_Fq->flags & QMAN_FQ_STATE_ORL);
            p_Fq->flags &= ~QMAN_FQ_STATE_ORL;
            break;
        case 128:
            ASSERT_COND((p_Fq->state == qman_fq_state_parked) ||
                (p_Fq->state == qman_fq_state_sched));
            ASSERT_COND(p_Fq->flags & QMAN_FQ_STATE_CHANGING);
            p_Fq->flags &= ~QMAN_FQ_STATE_CHANGING;
            if (p_Msg->fq.fqs & QM_MR_FQS_NOTEMPTY)
                p_Fq->flags |= QMAN_FQ_STATE_NE;
            if (p_Msg->fq.fqs & QM_MR_FQS_ORLPRESENT)
                p_Fq->flags |= QMAN_FQ_STATE_ORL;
            p_Fq->state = qman_fq_state_retired;
            break;
        case 130:
            ASSERT_COND(p_Fq->state == qman_fq_state_sched);
            ASSERT_COND(p_Fq->flags & QMAN_FQ_STATE_CHANGING);
            p_Fq->state = qman_fq_state_parked;
    }
    FQUNLOCK(p_Fq);
}
