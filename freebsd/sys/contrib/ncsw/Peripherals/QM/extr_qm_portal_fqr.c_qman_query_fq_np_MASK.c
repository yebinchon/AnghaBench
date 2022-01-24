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
struct qman_fq {int /*<<< orphan*/  fqid; } ;
struct qm_mcr_queryfq_np {int dummy; } ;
struct qm_mc_result {int verb; scalar_t__ result; struct qm_mcr_queryfq_np queryfq_np; } ;
struct TYPE_6__ {int /*<<< orphan*/  fqid; } ;
struct qm_mc_command {TYPE_1__ queryfq_np; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  QM_MCC_VERB_QUERYFQ_NP ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 int QM_MCR_VERB_QUERYFQ_NP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qm_mc_result* FUNC6 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC8(t_QmPortal *p_QmPortal, struct qman_fq *p_Fq, struct qm_mcr_queryfq_np *p_Np)
{
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    uint8_t                 res;

    FUNC1(p_QmPortal);
    p_Mcc = FUNC7(p_QmPortal->p_LowQmPortal);
    p_Mcc->queryfq_np.fqid = p_Fq->fqid;
    FUNC5(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_QUERYFQ_NP);
    while (!(p_Mcr = FUNC6(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ_NP);
    res = p_Mcr->result;
    if (res == QM_MCR_RESULT_OK)
        *p_Np = p_Mcr->queryfq_np;
    FUNC2(p_QmPortal);
    if (res != QM_MCR_RESULT_OK)
        FUNC3(MINOR, E_INVALID_STATE, ("QUERYFQ_NP failed: %s\n", FUNC4(res)));
    return E_OK;
}