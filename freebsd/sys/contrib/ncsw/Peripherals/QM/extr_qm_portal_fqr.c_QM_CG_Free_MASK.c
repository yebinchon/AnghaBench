#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_2__ t_QmPortal ;
struct TYPE_10__ {int /*<<< orphan*/  id; scalar_t__ h_QmPortal; int /*<<< orphan*/  h_Qm; } ;
typedef  TYPE_3__ t_QmCg ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
struct qm_mc_result {int verb; scalar_t__ result; } ;
struct TYPE_8__ {int /*<<< orphan*/  we_mask; int /*<<< orphan*/  cgid; } ;
struct qm_mc_command {TYPE_1__ initcgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  QM_CGR_WE_MASK ; 
 int QM_MCC_VERB_MODIFYCGR ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct qm_mc_result* FUNC10 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC11 (int /*<<< orphan*/ ) ; 

t_Error FUNC12(t_Handle h_QmCg)
{

    t_QmCg                  *p_QmCg = (t_QmCg *)h_QmCg;
    t_Error                 err;
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    t_QmPortal              *p_QmPortal;

    FUNC6(p_QmCg, E_INVALID_HANDLE);

    p_QmPortal = (t_QmPortal *)p_QmCg->h_QmPortal;

    FUNC1(p_QmPortal);
    p_Mcc = FUNC11(p_QmPortal->p_LowQmPortal);
    p_Mcc->initcgr.cgid = p_QmCg->id;
    p_Mcc->initcgr.we_mask = QM_CGR_WE_MASK;

    err = FUNC3(p_QmCg->h_Qm, p_QmCg->id);
    if(err)
    {
        FUNC7(p_QmCg);
        FUNC2(p_QmPortal);
        FUNC5(MAJOR, E_INVALID_STATE, ("QmFreeCgId failed"));
    }

    err = FUNC4(p_QmCg->h_QmPortal, p_QmCg->id);
    if(err)
    {
        FUNC7(p_QmCg);
        FUNC2(p_QmPortal);
        FUNC5(MAJOR, E_INVALID_STATE, ("QmPortalUnregisterCg failed"));
    }

    FUNC9(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_MODIFYCGR);
    while (!(p_Mcr = FUNC10(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_MODIFYCGR);
    if (p_Mcr->result != QM_MCR_RESULT_OK)
    {
        FUNC2(p_QmPortal);
        FUNC5(MINOR, E_INVALID_STATE, ("INITCGR failed: %s", FUNC8(p_Mcr->result)));
    }
    FUNC2(p_QmPortal);

    FUNC7(p_QmCg);

    return E_OK;
}