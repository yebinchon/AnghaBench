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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  p_BmPortalLow; int /*<<< orphan*/  irq; int /*<<< orphan*/  depletionPoolsTable; scalar_t__ rcrCons; scalar_t__ rcrProd; scalar_t__ slowpoll; struct bman_depletion* pools; TYPE_1__* cbs; } ;
typedef  TYPE_2__ t_BmPortal ;
struct bman_depletion {int dummy; } ;
typedef  int e_BmPortalRcrConsumeMode ;
typedef  int e_BmPortalProduceMode ;
struct TYPE_6__ {int /*<<< orphan*/ * f_BmPrefetchCb; int /*<<< orphan*/  f_BmUpdateCb; int /*<<< orphan*/  f_BmCommitCb; } ;

/* Variables and functions */
 int BMAN_PORTAL_FLAG_CACHE ; 
 int BMAN_PORTAL_FLAG_IRQ ; 
 int BMAN_PORTAL_FLAG_RECOVER ; 
 int BMAN_PORTAL_FLAG_WAIT ; 
 scalar_t__ BM_MAX_NUM_OF_POOLS ; 
 int BM_PIRQ_BSCN ; 
 int BM_PIRQ_RCRI ; 
 size_t BM_RCR_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bm_rcr_cce_prefetch ; 
 int /*<<< orphan*/  bm_rcr_cce_update ; 
 int /*<<< orphan*/  bm_rcr_cci_update ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  bm_rcr_pce_commit ; 
 int /*<<< orphan*/  bm_rcr_pci_commit ; 
 int /*<<< orphan*/  bm_rcr_pvb_commit ; 
 int /*<<< orphan*/  FUNC15 (struct bman_depletion*) ; 
#define  e_BmPortalPCE 132 
#define  e_BmPortalPCI 131 
#define  e_BmPortalPVB 130 
#define  e_BmPortalRcrCCE 129 
#define  e_BmPortalRcrCCI 128 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  portal_isr ; 

__attribute__((used)) static t_Error FUNC17(t_BmPortal *p_BmPortal,
                                  uint32_t flags,
                                  const struct bman_depletion *pools)
{
    int                             ret = 0;
    uint8_t                         bpid = 0;
    e_BmPortalRcrConsumeMode        rcr_cmode;
    e_BmPortalProduceMode           pmode;

    pmode     = e_BmPortalPVB;
    rcr_cmode = (flags & BMAN_PORTAL_FLAG_CACHE) ? e_BmPortalRcrCCE : e_BmPortalRcrCCI;

    switch (pmode)
    {
        case e_BmPortalPCI:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pci_commit;
            break;
        case e_BmPortalPCE:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pce_commit;
            break;
        case e_BmPortalPVB:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pvb_commit;
            break;
    }
    switch (rcr_cmode)
    {
        case e_BmPortalRcrCCI:
            p_BmPortal->cbs[BM_RCR_RING].f_BmUpdateCb      = bm_rcr_cci_update;
            p_BmPortal->cbs[BM_RCR_RING].f_BmPrefetchCb    = NULL;
            break;
        case e_BmPortalRcrCCE:
            p_BmPortal->cbs[BM_RCR_RING].f_BmUpdateCb      = bm_rcr_cce_update;
            p_BmPortal->cbs[BM_RCR_RING].f_BmPrefetchCb    = bm_rcr_cce_prefetch;
            break;
    }

    if (FUNC14(p_BmPortal->p_BmPortalLow, pmode, rcr_cmode)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("RCR initialization failed"));
        goto fail_rcr;
    }
    if (FUNC11(p_BmPortal->p_BmPortalLow)) {
        FUNC1(MAJOR, E_INVALID_STATE, ("MC initialization failed"));
        goto fail_mc;
    }
    p_BmPortal->pools[0] = *pools;
    FUNC15(&p_BmPortal->pools[1]);
    while (bpid < BM_MAX_NUM_OF_POOLS) {
        /* Default to all BPIDs disabled, we enable as required
         * at run-time. */
        FUNC5(p_BmPortal->p_BmPortalLow, bpid, 0);
        bpid++;
    }
    p_BmPortal->flags = flags;
    p_BmPortal->slowpoll = 0;
    p_BmPortal->rcrProd = p_BmPortal->rcrCons = 0;
    FUNC16(&p_BmPortal->depletionPoolsTable, 0, sizeof(p_BmPortal->depletionPoolsTable));
    /* Write-to-clear any stale interrupt status bits */
    FUNC6(p_BmPortal->p_BmPortalLow, 0xffffffff);
    FUNC8(p_BmPortal->p_BmPortalLow, 0xffffffff);
    FUNC7(p_BmPortal->p_BmPortalLow, BM_PIRQ_RCRI | BM_PIRQ_BSCN);
    if (flags & BMAN_PORTAL_FLAG_IRQ)
    {
        FUNC4(p_BmPortal->irq, portal_isr, p_BmPortal);
        FUNC2(p_BmPortal->irq);
        /* Enable the bits that make sense */
        FUNC9(p_BmPortal->p_BmPortalLow);
    } else
        /* without IRQ, we can't block */
        flags &= ~BMAN_PORTAL_FLAG_WAIT;
    /* Need RCR to be empty before continuing */
    FUNC6(p_BmPortal->p_BmPortalLow, (uint32_t)~BM_PIRQ_RCRI);
    if (!(flags & BMAN_PORTAL_FLAG_RECOVER) ||
        !(flags & BMAN_PORTAL_FLAG_WAIT))
        ret = FUNC13(p_BmPortal->p_BmPortalLow);
    if (ret) {
        FUNC1(MAJOR, E_INVALID_STATE, ("RCR unclean, need recovery"));
        goto fail_rcr_empty;
    }
    FUNC6(p_BmPortal->p_BmPortalLow, 0);
    return E_OK;
fail_rcr_empty:
    FUNC10(p_BmPortal->p_BmPortalLow);
fail_mc:
    FUNC12(p_BmPortal->p_BmPortalLow);
fail_rcr:
    FUNC3(p_BmPortal);
    return FUNC0(E_INVALID_STATE);
}