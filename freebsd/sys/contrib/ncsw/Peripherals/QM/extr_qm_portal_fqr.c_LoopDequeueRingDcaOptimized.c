
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int p_LowQmPortal; int h_App; TYPE_2__* p_NullCB; } ;
typedef TYPE_3__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_DpaaFD ;
struct TYPE_7__ {scalar_t__ (* dqrr ) (int ,int ,TYPE_3__*,int ,int *) ;} ;
struct qman_fq {scalar_t__ state; int fqidOffset; int h_QmFqr; int h_App; TYPE_1__ cb; int flags; } ;
struct qm_dqrr_entry {int stat; int fqid; int fd; int contextB; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;
typedef scalar_t__ e_RxStoreResponse ;
struct TYPE_8__ {scalar_t__ (* dqrr ) (int ,int *,TYPE_3__*,int,int *) ;} ;


 int ASSERT_COND (int) ;
 int QMAN_FQ_STATE_NE ;
 int QMAN_FQ_STATE_VDQCR ;
 int QM_DQRR_STAT_DQCR_EXPIRED ;
 int QM_DQRR_STAT_FQ_EMPTY ;
 int QM_DQRR_STAT_FQ_HELDACTIVE ;
 int QM_DQRR_STAT_UNSCHEDULED ;
 scalar_t__ e_RX_STORE_RESPONSE_PAUSE ;
 int freeDrainedFq (struct qman_fq*) ;
 struct qman_fq* ptr_from_aligned_int (int ) ;
 int qmPortalDqrrDcaConsume1ptr (int ,struct qm_dqrr_entry*,int) ;
 int qmPortalDqrrPvbUpdate (int ) ;
 struct qm_dqrr_entry* qm_dqrr_current (int ) ;
 int qm_dqrr_next (int ) ;
 int qman_cb_dqrr_consume ;
 int qman_cb_dqrr_defer ;
 int qman_cb_dqrr_park ;
 int qman_cb_dqrr_pause ;
 scalar_t__ qman_fq_state_waiting_parked ;
 scalar_t__ stub1 (int ,int ,TYPE_3__*,int ,int *) ;
 scalar_t__ stub2 (int ,int ,TYPE_3__*,int ,int *) ;
 scalar_t__ stub3 (int ,int *,TYPE_3__*,int,int *) ;

__attribute__((used)) static void LoopDequeueRingDcaOptimized(t_Handle h_QmPortal)
{
    struct qm_dqrr_entry *p_Dq;
    struct qman_fq *p_Fq;
    enum qman_cb_dqrr_result res = qman_cb_dqrr_consume;
    e_RxStoreResponse tmpRes;
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;

    while (res != qman_cb_dqrr_pause)
    {
        qmPortalDqrrPvbUpdate(p_QmPortal->p_LowQmPortal);
        p_Dq = qm_dqrr_current(p_QmPortal->p_LowQmPortal);
        if (!p_Dq)
            break;
 p_Fq = ptr_from_aligned_int(p_Dq->contextB);
        if (p_Dq->stat & QM_DQRR_STAT_UNSCHEDULED) {



            tmpRes = p_Fq->cb.dqrr(p_Fq->h_App, p_Fq->h_QmFqr, p_QmPortal, p_Fq->fqidOffset, (t_DpaaFD*)&p_Dq->fd);
            if (tmpRes == e_RX_STORE_RESPONSE_PAUSE)
                res = qman_cb_dqrr_pause;

            if (p_Dq->stat & QM_DQRR_STAT_DQCR_EXPIRED)
                p_Fq->flags &= ~QMAN_FQ_STATE_VDQCR;
            if (p_Dq->stat & QM_DQRR_STAT_FQ_EMPTY)
            {
                p_Fq->flags &= ~QMAN_FQ_STATE_NE;
                freeDrainedFq(p_Fq);
            }
        }
        else
        {


            ASSERT_COND(p_Dq->fqid);
            if (p_Fq)
            {
                tmpRes = p_Fq->cb.dqrr(p_Fq->h_App,
                                       p_Fq->h_QmFqr,
                                       p_QmPortal,
                                       p_Fq->fqidOffset,
                                       (t_DpaaFD*)&p_Dq->fd);
                if (tmpRes == e_RX_STORE_RESPONSE_PAUSE)
                    res = qman_cb_dqrr_pause;
                else if (p_Fq->state == qman_fq_state_waiting_parked)
                    res = qman_cb_dqrr_park;
            }
            else
            {
                tmpRes = p_QmPortal->p_NullCB->dqrr(p_QmPortal->h_App,
                                                    ((void*)0),
                                                    p_QmPortal,
                                                    p_Dq->fqid,
                                                    (t_DpaaFD*)&p_Dq->fd);
                if (tmpRes == e_RX_STORE_RESPONSE_PAUSE)
                    res = qman_cb_dqrr_pause;
            }
        }




        ASSERT_COND((p_Dq->stat & QM_DQRR_STAT_FQ_HELDACTIVE) ||
                (res != qman_cb_dqrr_park));

        if (res != qman_cb_dqrr_defer)
            qmPortalDqrrDcaConsume1ptr(p_QmPortal->p_LowQmPortal,
                                       p_Dq,
                                       (res == qman_cb_dqrr_park));
        qm_dqrr_next(p_QmPortal->p_LowQmPortal);
    }
}
