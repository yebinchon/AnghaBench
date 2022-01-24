#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_2__ t_QmPortal ;
typedef  int /*<<< orphan*/  t_Error ;
struct qman_fq {scalar_t__ state; int flags; int /*<<< orphan*/  fqid; } ;
struct qm_mc_result {int verb; scalar_t__ result; } ;
struct TYPE_6__ {int /*<<< orphan*/  fqid; } ;
struct qm_mc_command {TYPE_1__ alterfq; } ;

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
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int QMAN_FQ_FLAG_NO_MODIFY ; 
 int QMAN_FQ_STATE_BLOCKOOS ; 
 int /*<<< orphan*/  QM_MCC_VERB_ALTER_OOS ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_ALTER_OOS ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qm_mc_result* FUNC9 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ qman_fq_state_oos ; 
 scalar_t__ qman_fq_state_retired ; 

__attribute__((used)) static t_Error FUNC11(t_QmPortal *p_QmPortal, struct qman_fq *p_Fq)
{
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    uint8_t                 res;

    FUNC0(p_Fq->state == qman_fq_state_retired);
    if (p_Fq->flags & QMAN_FQ_FLAG_NO_MODIFY)
        return FUNC1(E_INVALID_VALUE);
    FUNC4(p_QmPortal);
    FUNC2(p_Fq);
    if ((p_Fq->flags & QMAN_FQ_STATE_BLOCKOOS) ||
            (p_Fq->state != qman_fq_state_retired)) {
        FUNC3(p_Fq);
        FUNC5(p_QmPortal);
        return FUNC1(E_BUSY);
    }
    p_Mcc = FUNC10(p_QmPortal->p_LowQmPortal);
    p_Mcc->alterfq.fqid = p_Fq->fqid;
    FUNC8(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_ALTER_OOS);
    while (!(p_Mcr = FUNC9(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_OOS);
    res = p_Mcr->result;
    if (res != QM_MCR_RESULT_OK) {
        FUNC3(p_Fq);
        FUNC5(p_QmPortal);
        FUNC6(MINOR, E_INVALID_STATE, ("ALTER_OOS failed: %s\n", FUNC7(res)));
    }
    p_Fq->state = qman_fq_state_oos;

    FUNC3(p_Fq);
    FUNC5(p_QmPortal);
    return E_OK;
}