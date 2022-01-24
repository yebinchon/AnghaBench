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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_3__ t_QmPortal ;
typedef  int /*<<< orphan*/  t_Error ;
struct qman_fq {scalar_t__ state; int flags; int /*<<< orphan*/  cgr_groupid; } ;
struct qm_mcc_initfq {int dummy; } ;
struct qm_mc_result {scalar_t__ verb; scalar_t__ result; } ;
struct TYPE_7__ {int fq_ctrl; int /*<<< orphan*/  cgid; } ;
struct TYPE_8__ {int we_mask; TYPE_1__ fqd; } ;
struct qm_mc_command {TYPE_2__ initfq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC2 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC3 (struct qman_fq*) ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC4 (void*,struct qm_mcc_initfq*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int QMAN_FQ_FLAG_NO_MODIFY ; 
 int QMAN_FQ_STATE_CGR_EN ; 
 int QMAN_FQ_STATE_CHANGING ; 
 int QMAN_INITFQ_FLAG_SCHED ; 
 int QM_FQCTRL_CGE ; 
 int QM_INITFQ_WE_CGID ; 
 int QM_INITFQ_WE_FQCTRL ; 
 int /*<<< orphan*/  QM_MCC_VERB_INITFQ_PARKED ; 
 int /*<<< orphan*/  QM_MCC_VERB_INITFQ_SCHED ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 scalar_t__ QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct qm_mc_result* FUNC11 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ qman_fq_state_oos ; 
 scalar_t__ qman_fq_state_parked ; 
 scalar_t__ qman_fq_state_sched ; 

__attribute__((used)) static t_Error FUNC13(t_QmPortal          *p_QmPortal,
                            struct qman_fq      *p_Fq,
                            uint32_t            flags,
                            struct qm_mcc_initfq *p_Opts)
{
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    uint8_t res, myverb = (uint8_t)((flags & QMAN_INITFQ_FLAG_SCHED) ?
        QM_MCC_VERB_INITFQ_SCHED : QM_MCC_VERB_INITFQ_PARKED);

    FUNC8((p_Fq->state == qman_fq_state_oos) ||
                              (p_Fq->state == qman_fq_state_parked),
                              E_INVALID_STATE);

    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return FUNC1(E_INVALID_VALUE);
    /* Issue an INITFQ_[PARKED|SCHED] management command */
    FUNC5(p_QmPortal);
    FUNC2(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_CHANGING) ||
            ((p_Fq->state != qman_fq_state_oos) &&
                (p_Fq->state != qman_fq_state_parked))) {
        FUNC3(p_Fq);
        FUNC6(p_QmPortal);
        return FUNC1(E_BUSY);
    }
    p_Mcc = FUNC12(p_QmPortal->p_LowQmPortal);
    FUNC4((void*)&p_Mcc->initfq, p_Opts, sizeof(struct qm_mcc_initfq));
    FUNC10(p_QmPortal->p_LowQmPortal, myverb);
    while (!(p_Mcr = FUNC11(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) == myverb);
    res = p_Mcr->result;
    if (res != QM_MCR_RESULT_OK) {
        FUNC3(p_Fq);
        FUNC6(p_QmPortal);
        FUNC7(MINOR, E_INVALID_STATE,("INITFQ failed: %s", FUNC9(res)));
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
    FUNC3(p_Fq);
    FUNC6(p_QmPortal);
    return E_OK;
}