#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; TYPE_1__* cursor; int /*<<< orphan*/  available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct TYPE_3__ {int __dont_write_directly__verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  EQCR_PI ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ e_QmPortalPCE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static __inline__ void FUNC7(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
#ifdef QM_CHECKING
    EQCR_COMMIT_CHECKS(eqcr);
    ASSERT_COND(eqcr->pmode == e_QmPortalPCE);
#endif /* QM_CHECKING */
    eqcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    FUNC2(eqcr);
    eqcr->available--;
    FUNC4(eqcr->cursor);
    FUNC6();
    FUNC5(EQCR_PI, FUNC3(eqcr->cursor));
#ifdef QM_CHECKING
    eqcr->busy = 0;
#endif /* QM_CHECKING */
}