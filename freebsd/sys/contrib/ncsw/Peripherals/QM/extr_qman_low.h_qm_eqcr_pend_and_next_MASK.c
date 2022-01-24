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
struct qm_eqcr {int busy; scalar_t__ pmode; int available; int vbit; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int __dont_write_directly__verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_eqcr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_eqcr_entry*) ; 
 scalar_t__ e_QmPortalPVB ; 

__attribute__((used)) static __inline__ struct qm_eqcr_entry *FUNC4(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
#ifdef QM_CHECKING
    ASSERT_COND(eqcr->busy);
    ASSERT_COND(eqcr->pmode != e_QmPortalPVB);
#endif /* QM_CHECKING */
    if (eqcr->available == 1)
        return NULL;
    eqcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    FUNC2(eqcr->cursor);
    FUNC1(eqcr);
    eqcr->available--;
    FUNC3(eqcr->cursor);
    return eqcr->cursor;
}