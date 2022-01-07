
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int p_LowQmPortal; } ;
typedef TYPE_1__ t_QmPortal ;
typedef int t_Error ;
struct qman_fq {scalar_t__ state; int flags; int fqid; } ;


 int ASSERT_COND (int) ;
 int E_OK ;
 int FQLOCK (struct qman_fq*) ;
 int FQUNLOCK (struct qman_fq*) ;
 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int QMAN_FQ_STATE_VDQCR ;
 int QM_VDQCR_FQID_MASK ;
 int qm_dqrr_vdqcr_set (int ,int) ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_retired ;

__attribute__((used)) static t_Error qman_volatile_dequeue(t_QmPortal *p_QmPortal,
                                     struct qman_fq *p_Fq,
                                     uint32_t vdqcr)
{
    ASSERT_COND((p_Fq->state == qman_fq_state_parked) ||
                (p_Fq->state == qman_fq_state_retired));
    ASSERT_COND(!(vdqcr & QM_VDQCR_FQID_MASK));
    ASSERT_COND(!(p_Fq->flags & QMAN_FQ_STATE_VDQCR));

    vdqcr = (vdqcr & ~QM_VDQCR_FQID_MASK) | p_Fq->fqid;
    NCSW_PLOCK(p_QmPortal);
    FQLOCK(p_Fq);
    p_Fq->flags |= QMAN_FQ_STATE_VDQCR;
    qm_dqrr_vdqcr_set(p_QmPortal->p_LowQmPortal, vdqcr);
    FQUNLOCK(p_Fq);
    PUNLOCK(p_QmPortal);

    return E_OK;
}
