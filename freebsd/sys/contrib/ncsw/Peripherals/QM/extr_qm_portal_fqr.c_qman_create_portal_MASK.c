#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_25__ {int options; TYPE_3__* p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
typedef  int /*<<< orphan*/  t_Error ;
struct qm_portal_config {int /*<<< orphan*/  irq; } ;
struct TYPE_26__ {struct qm_portal_config config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_portalExceptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 int QMAN_PORTAL_FLAG_DCA ; 
 int QMAN_PORTAL_FLAG_DSTASH ; 
 int QMAN_PORTAL_FLAG_IRQ ; 
 int QMAN_PORTAL_FLAG_RSTASH ; 
 int QMAN_PORTAL_FLAG_WAIT ; 
 int QM_PIRQ_DQRI ; 
 int QM_PIRQ_EQCI ; 
 int QM_PIRQ_MRI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  e_QmPortalDequeuePullMode ; 
 int /*<<< orphan*/  e_QmPortalDequeuePushMode ; 
 int /*<<< orphan*/  e_QmPortalDqrrCCI ; 
 int /*<<< orphan*/  e_QmPortalDqrrDCA ; 
 int /*<<< orphan*/  e_QmPortalEqcrCCE ; 
 int /*<<< orphan*/  e_QmPortalMrCCI ; 
 int /*<<< orphan*/  e_QmPortalPVB ; 
 int /*<<< orphan*/  portal_isr ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 scalar_t__ FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 scalar_t__ FUNC24 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int) ; 

__attribute__((used)) static t_Error FUNC26(t_QmPortal *p_QmPortal,
                                   uint32_t flags,
                                   uint32_t sdqcrFlags,
                                   uint8_t  dqrrSize)
{
    const struct qm_portal_config   *p_Config = &(p_QmPortal->p_LowQmPortal->config);
    int                             ret = 0;
    t_Error                         err;
    uint32_t                        isdr;

    if ((err = FUNC12(p_QmPortal->p_LowQmPortal, e_QmPortalPVB, e_QmPortalEqcrCCE)) != E_OK)
        FUNC2(MINOR, err, ("Qman EQCR initialization failed\n"));

    if (FUNC7(p_QmPortal->p_LowQmPortal,
                     sdqcrFlags ? e_QmPortalDequeuePushMode : e_QmPortalDequeuePullMode,
                     e_QmPortalPVB,
                     (flags & QMAN_PORTAL_FLAG_DCA) ? e_QmPortalDqrrDCA : e_QmPortalDqrrCCI,
                     dqrrSize,
                     (flags & QMAN_PORTAL_FLAG_RSTASH) ? 1 : 0,
                     (flags & QMAN_PORTAL_FLAG_DSTASH) ? 1 : 0)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("DQRR initialization failed"));
        goto fail_dqrr;
    }

    if (FUNC24(p_QmPortal->p_LowQmPortal, e_QmPortalPVB, e_QmPortalMrCCI)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("MR initialization failed"));
        goto fail_mr;
    }
    if (FUNC21(p_QmPortal->p_LowQmPortal)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("MC initialization failed"));
        goto fail_mc;
    }
    if (FUNC16(p_QmPortal->p_LowQmPortal)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("ISR initialization failed"));
        goto fail_isr;
    }
    /* static interrupt-gating controls */
    FUNC9(p_QmPortal->p_LowQmPortal, 12);
    FUNC25(p_QmPortal->p_LowQmPortal, 4);
    FUNC17(p_QmPortal->p_LowQmPortal, 100);
    p_QmPortal->options = flags;
    isdr = 0xffffffff;
    FUNC18(p_QmPortal->p_LowQmPortal, 0xffffffff);
    FUNC14(p_QmPortal->p_LowQmPortal, DEFAULT_portalExceptions);
    FUNC13(p_QmPortal->p_LowQmPortal, isdr);
    if (flags & QMAN_PORTAL_FLAG_IRQ)
    {
        FUNC4(p_Config->irq, portal_isr, p_QmPortal);
        FUNC3(p_Config->irq);
        FUNC19(p_QmPortal->p_LowQmPortal);
    } else
        /* without IRQ, we can't block */
        flags &= ~QMAN_PORTAL_FLAG_WAIT;
    /* Need EQCR to be empty before continuing */
    isdr ^= QM_PIRQ_EQCI;
    FUNC13(p_QmPortal->p_LowQmPortal, isdr);
    ret = FUNC11(p_QmPortal->p_LowQmPortal);
    if (ret) {
        FUNC1(MAJOR, E_INVALID_STATE, ("EQCR unclean"));
        goto fail_eqcr_empty;
    }
    isdr ^= (QM_PIRQ_DQRI | QM_PIRQ_MRI);
    FUNC13(p_QmPortal->p_LowQmPortal, isdr);
    if (FUNC5(p_QmPortal->p_LowQmPortal) != NULL)
    {
        FUNC1(MAJOR, E_INVALID_STATE, ("DQRR unclean"));
goto fail_dqrr_mr_empty;
    }
    if (FUNC22(p_QmPortal->p_LowQmPortal) != NULL)
    {
        FUNC1(MAJOR, E_INVALID_STATE, ("MR unclean"));
goto fail_dqrr_mr_empty;
    }
    FUNC13(p_QmPortal->p_LowQmPortal, 0);
    FUNC8(p_QmPortal->p_LowQmPortal, sdqcrFlags);
    return E_OK;
fail_dqrr_mr_empty:
fail_eqcr_empty:
    FUNC15(p_QmPortal->p_LowQmPortal);
fail_isr:
    FUNC20(p_QmPortal->p_LowQmPortal);
fail_mc:
    FUNC23(p_QmPortal->p_LowQmPortal);
fail_mr:
    FUNC6(p_QmPortal->p_LowQmPortal);
fail_dqrr:
    FUNC10(p_QmPortal->p_LowQmPortal);
    return FUNC0(E_INVALID_STATE);
}