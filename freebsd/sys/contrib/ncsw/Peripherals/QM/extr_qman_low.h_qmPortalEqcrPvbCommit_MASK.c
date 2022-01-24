#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; int /*<<< orphan*/  available; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int __dont_write_directly__verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_eqcr_entry*) ; 
 scalar_t__ e_QmPortalPVB ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static __inline__ void FUNC5(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    struct qm_eqcr_entry *eqcursor;
#ifdef QM_CHECKING
    EQCR_COMMIT_CHECKS(eqcr);
    ASSERT_COND(eqcr->pmode == e_QmPortalPVB);
#endif /* QM_CHECKING */
    FUNC4();
    eqcursor = eqcr->cursor;
    eqcursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    FUNC3(eqcursor);
    FUNC2(eqcr);
    eqcr->available--;
#ifdef QM_CHECKING
    eqcr->busy = 0;
#endif /* QM_CHECKING */
}