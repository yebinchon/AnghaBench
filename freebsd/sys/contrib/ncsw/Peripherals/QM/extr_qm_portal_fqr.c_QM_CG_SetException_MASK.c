#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_3__ t_QmPortal ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  f_Exception; scalar_t__ h_QmPortal; } ;
typedef  TYPE_4__ t_QmCg ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct qm_mc_result {int verb; scalar_t__ result; } ;
struct TYPE_8__ {int /*<<< orphan*/  cscn_en; } ;
struct TYPE_9__ {TYPE_1__ cgr; int /*<<< orphan*/  we_mask; int /*<<< orphan*/  cgid; } ;
struct qm_mc_command {TYPE_2__ initcgr; } ;
typedef  scalar_t__ e_QmExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  QM_CGR_EN ; 
 int /*<<< orphan*/  QM_CGR_WE_CSCN_EN ; 
 int QM_MCC_VERB_MODIFYCGR ; 
 scalar_t__ QM_MCR_RESULT_OK ; 
 int QM_MCR_VERB_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ e_QM_EX_CG_STATE_CHANGE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct qm_mc_result* FUNC7 (int /*<<< orphan*/ ) ; 
 struct qm_mc_command* FUNC8 (int /*<<< orphan*/ ) ; 

t_Error FUNC9(t_Handle h_QmCg, e_QmExceptions exception, bool enable)
{
    t_QmCg                  *p_QmCg = (t_QmCg *)h_QmCg;
    struct qm_mc_command    *p_Mcc;
    struct qm_mc_result     *p_Mcr;
    t_QmPortal              *p_QmPortal;

    FUNC4(p_QmCg, E_INVALID_HANDLE);

    p_QmPortal = (t_QmPortal *)p_QmCg->h_QmPortal;
    if (!p_QmCg->f_Exception)
        FUNC3(MINOR, E_INVALID_VALUE, ("Either threshold or exception callback was not configured."));

    FUNC1(p_QmPortal);
    p_Mcc = FUNC8(p_QmPortal->p_LowQmPortal);
    p_Mcc->initcgr.cgid = p_QmCg->id;
    p_Mcc->initcgr.we_mask = QM_CGR_WE_CSCN_EN;

    if(exception == e_QM_EX_CG_STATE_CHANGE)
    {
        if(enable)
            p_Mcc->initcgr.cgr.cscn_en = QM_CGR_EN;
    }
    else
    {
        FUNC2(p_QmPortal);
        FUNC3(MAJOR, E_INVALID_VALUE, ("Illegal exception"));
    }

    FUNC6(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_MODIFYCGR);
    while (!(p_Mcr = FUNC7(p_QmPortal->p_LowQmPortal))) ;
    FUNC0((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_MODIFYCGR);
    if (p_Mcr->result != QM_MCR_RESULT_OK)
    {
        FUNC2(p_QmPortal);
        FUNC3(MINOR, E_INVALID_STATE, ("INITCGR failed: %s", FUNC5(p_Mcr->result)));
    }
    FUNC2(p_QmPortal);

    return E_OK;
}