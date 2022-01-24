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
struct qman_fq {scalar_t__ state; int flags; int /*<<< orphan*/  fqid; } ;
struct TYPE_8__ {int fqs; } ;
struct qm_mc_result {int verb; scalar_t__ result; TYPE_2__ alterfq; } ;
struct TYPE_7__ {int /*<<< orphan*/  context_b; int /*<<< orphan*/  fqid; } ;
struct qm_mc_command {TYPE_1__ alterfq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC2 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
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
 int /*<<< orphan*/  QM_MCR_VERB_ALTER_RETIRE ; 
 int /*<<< orphan*/  QM_MCR_VERB_ALTER_RETIRE_CTXB ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct qm_mc_result* FUNC10 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ qman_fq_state_oos ; 
 scalar_t__ qman_fq_state_parked ; 
 scalar_t__ qman_fq_state_retired ; 
 scalar_t__ qman_fq_state_sched ; 

__attribute__((used)) static t_Error FUNC12(t_QmPortal        *p_QmPortal,
                              struct qman_fq    *p_Fq,
                              uint32_t          *p_Flags,
                              bool              drain)
{
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    t_Error                 err = E_OK;
    uint8_t                 res;

    FUNC5((p_Fq->state == qman_fq_state_parked) ||
                              (p_Fq->state == qman_fq_state_sched),
                              E_INVALID_STATE);

    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return E_INVALID_VALUE;
    FUNC3(p_QmPortal);
    FUNC1(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_CHANGING) ||
            (p_Fq->state == qman_fq_state_retired) ||
                (p_Fq->state == qman_fq_state_oos)) {
        err = E_BUSY;
        goto out;
    }
    p_Mcc = FUNC11(p_QmPortal->p_LowQmPortal);
    p_Mcc->alterfq.fqid = p_Fq->fqid;
    if (drain)
        p_Mcc->alterfq.context_b = FUNC7(p_Fq);
    FUNC9(p_QmPortal->p_LowQmPortal,
                 (uint8_t)((drain)?QM_MCC_VERB_ALTER_RETIRE_CTXB:QM_MCC_VERB_ALTER_RETIRE));
    while (!(p_Mcr = FUNC10(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) ==
                (drain)?QM_MCR_VERB_ALTER_RETIRE_CTXB:QM_MCR_VERB_ALTER_RETIRE);
    res = p_Mcr->result;
    if (res == QM_MCR_RESULT_OK)
    {
        /* Process 'fq' right away, we'll ignore FQRNI */
        if (p_Mcr->alterfq.fqs & QM_MCR_FQS_NOTEMPTY)
            p_Fq->flags |= QMAN_FQ_STATE_NE;
        if (p_Mcr->alterfq.fqs & QM_MCR_FQS_ORLPRESENT)
            p_Fq->flags |= QMAN_FQ_STATE_ORL;
        p_Fq->state = qman_fq_state_retired;
    }
    else if (res == QM_MCR_RESULT_PENDING)
        p_Fq->flags |= QMAN_FQ_STATE_CHANGING;
    else {
        FUNC6("ALTER_RETIRE failed: %s\n",
                FUNC8(res));
        err = E_INVALID_STATE;
    }
    if (p_Flags)
        *p_Flags = p_Fq->flags;
out:
    FUNC2(p_Fq);
    FUNC4(p_QmPortal);
    return err;
}