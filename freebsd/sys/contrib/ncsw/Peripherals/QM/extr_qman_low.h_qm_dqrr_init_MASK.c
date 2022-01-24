#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  t_Error ;
struct qm_portal_config {int cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr_ce; } ;
struct qm_dqrr {int ring; int pi; int ci; int cursor; int vbit; int ithresh; int dmode; int cmode; int /*<<< orphan*/  flags; int /*<<< orphan*/  pmode; int /*<<< orphan*/  fill; } ;
struct qm_portal {TYPE_1__ addr; struct qm_portal_config config; struct qm_dqrr dqrr; } ;
typedef  int /*<<< orphan*/  e_QmPortalProduceMode ;
typedef  int e_QmPortalDqrrConsumeMode ;
typedef  int e_QmPortalDequeueMode ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CL_DQRR ; 
 int /*<<< orphan*/  DQRR_CI_CINH ; 
 int /*<<< orphan*/  DQRR_ITR ; 
 int /*<<< orphan*/  DQRR_PDQCR ; 
 int /*<<< orphan*/  DQRR_PI_CINH ; 
 int /*<<< orphan*/  DQRR_SDQCR ; 
 int /*<<< orphan*/  DQRR_VDQCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  QM_BIND_DQRR ; 
 int /*<<< orphan*/  QM_DQRR_FLAG_RE ; 
 int /*<<< orphan*/  QM_DQRR_FLAG_SE ; 
 int QM_DQRR_SIZE ; 
 scalar_t__ QM_DQRR_VERB_VBIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qm_portal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline__ t_Error FUNC7(struct qm_portal *portal, e_QmPortalDequeueMode dmode,
        e_QmPortalProduceMode pmode, e_QmPortalDqrrConsumeMode cmode,
        uint8_t max_fill, int stash_ring, int stash_data)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    const struct qm_portal_config *config = &portal->config;
    uint32_t cfg;

    if (FUNC2(portal, QM_BIND_DQRR))
        return FUNC0(E_BUSY);
    if ((stash_ring || stash_data) && (config->cpu == -1))
        return FUNC0(E_INVALID_STATE);
    /* Make sure the DQRR will be idle when we enable */
    FUNC6(DQRR_SDQCR, 0);
    FUNC6(DQRR_VDQCR, 0);
    FUNC6(DQRR_PDQCR, 0);
    dqrr->ring = FUNC4(portal->addr.addr_ce, CL_DQRR);
    dqrr->pi = (uint8_t)(FUNC5(DQRR_PI_CINH) & (QM_DQRR_SIZE - 1));
    dqrr->ci = (uint8_t)(FUNC5(DQRR_CI_CINH) & (QM_DQRR_SIZE - 1));
    dqrr->cursor = dqrr->ring + dqrr->ci;
    dqrr->fill = FUNC3(QM_DQRR_SIZE, dqrr->ci, dqrr->pi);
    dqrr->vbit = (uint8_t)((FUNC5(DQRR_PI_CINH) & QM_DQRR_SIZE) ?
            QM_DQRR_VERB_VBIT : 0);
    dqrr->ithresh = (uint8_t)FUNC5(DQRR_ITR);

#ifdef QM_CHECKING
    dqrr->dmode = dmode;
    dqrr->pmode = pmode;
    dqrr->cmode = cmode;
    dqrr->flags = 0;
    if (stash_ring)
        dqrr->flags |= QM_DQRR_FLAG_RE;
    if (stash_data)
        dqrr->flags |= QM_DQRR_FLAG_SE;
#else
    FUNC1(pmode);
#endif /* QM_CHECKING */

    cfg = (FUNC5(CFG) & 0xff000f00) |
        ((max_fill & (QM_DQRR_SIZE - 1)) << 20) | /* DQRR_MF */
        ((dmode & 1) << 18) |            /* DP */
        ((cmode & 3) << 16) |            /* DCM */
        (stash_ring ? 0x80 : 0) |        /* RE */
        (0 ? 0x40 : 0) |            /* Ignore RP */
        (stash_data ? 0x20 : 0) |        /* SE */
        (0 ? 0x10 : 0);                /* Ignore SP */
    FUNC6(CFG, cfg);
    return E_OK;
}