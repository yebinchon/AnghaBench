#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  p_LowQmPortal; int /*<<< orphan*/  h_App; TYPE_2__* p_NullCB; } ;
typedef  TYPE_3__ t_QmPortal ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_DpaaFD ;
struct TYPE_7__ {scalar_t__ (* dqrr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct qman_fq {scalar_t__ state; int /*<<< orphan*/  fqidOffset; int /*<<< orphan*/  h_QmFqr; int /*<<< orphan*/  h_App; TYPE_1__ cb; int /*<<< orphan*/  flags; } ;
struct qm_dqrr_entry {int stat; int fqid; int /*<<< orphan*/  fd; int /*<<< orphan*/  contextB; } ;
typedef  enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;
typedef  scalar_t__ e_RxStoreResponse ;
struct TYPE_8__ {scalar_t__ (* dqrr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_NE ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_VDQCR ; 
 int QM_DQRR_STAT_DQCR_EXPIRED ; 
 int QM_DQRR_STAT_FQ_EMPTY ; 
 int QM_DQRR_STAT_FQ_HELDACTIVE ; 
 int QM_DQRR_STAT_UNSCHEDULED ; 
 scalar_t__ e_RX_STORE_RESPONSE_PAUSE ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*) ; 
 struct qman_fq* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct qm_dqrr_entry* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int qman_cb_dqrr_consume ; 
 int qman_cb_dqrr_park ; 
 int qman_cb_dqrr_pause ; 
 scalar_t__ qman_fq_state_waiting_parked ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(t_Handle h_QmPortal)
{
    struct qm_dqrr_entry        *p_Dq;
    struct qman_fq              *p_Fq;
    enum qman_cb_dqrr_result    res = qman_cb_dqrr_consume;
    e_RxStoreResponse           tmpRes;
    t_QmPortal                  *p_QmPortal = (t_QmPortal *)h_QmPortal;

    while (res != qman_cb_dqrr_pause)
    {
        FUNC4(p_QmPortal->p_LowQmPortal);
        p_Dq = FUNC5(p_QmPortal->p_LowQmPortal);
        if (!p_Dq)
            break;
	p_Fq = FUNC2(p_Dq->contextB);
        if (p_Dq->stat & QM_DQRR_STAT_UNSCHEDULED) {
            /* We only set QMAN_FQ_STATE_NE when retiring, so we only need
             * to check for clearing it when doing volatile dequeues. It's
             * one less thing to check in the critical path (SDQCR). */
            tmpRes = p_Fq->cb.dqrr(p_Fq->h_App, p_Fq->h_QmFqr, p_QmPortal, p_Fq->fqidOffset, (t_DpaaFD*)&p_Dq->fd);
            if (tmpRes == e_RX_STORE_RESPONSE_PAUSE)
                res = qman_cb_dqrr_pause;
            /* Check for VDQCR completion */
            if (p_Dq->stat & QM_DQRR_STAT_DQCR_EXPIRED)
                p_Fq->flags &= ~QMAN_FQ_STATE_VDQCR;
            if (p_Dq->stat & QM_DQRR_STAT_FQ_EMPTY)
            {
                p_Fq->flags &= ~QMAN_FQ_STATE_NE;
                FUNC1(p_Fq);
            }
        }
        else
        {
            /* Interpret 'dq' from the owner's perspective. */
            /* use portal default handlers */
            FUNC0(p_Dq->fqid);
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
                                                    NULL,
                                                    p_QmPortal,
                                                    p_Dq->fqid,
                                                    (t_DpaaFD*)&p_Dq->fd);
                if (tmpRes == e_RX_STORE_RESPONSE_PAUSE)
                    res = qman_cb_dqrr_pause;
            }
        }

        /* Parking isn't possible unless HELDACTIVE was set. NB,
         * FORCEELIGIBLE implies HELDACTIVE, so we only need to
         * check for HELDACTIVE to cover both. */
        FUNC0((p_Dq->stat & QM_DQRR_STAT_FQ_HELDACTIVE) ||
                (res != qman_cb_dqrr_park));
        if (res == qman_cb_dqrr_park)
            /* The only thing to do for non-DCA is the park-request */
            FUNC7(p_QmPortal->p_LowQmPortal);
        FUNC6(p_QmPortal->p_LowQmPortal);
        FUNC3(p_QmPortal->p_LowQmPortal, 1);
    }
}