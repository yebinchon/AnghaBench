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
typedef  scalar_t__ uint8_t ;
struct qm_eqcr {scalar_t__ cmode; int /*<<< orphan*/  available; scalar_t__ ci; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EQCR_CI ; 
 int QM_EQCR_SIZE ; 
 scalar_t__ FUNC1 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ e_QmPortalEqcrCCE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ uint8_t FUNC4(struct qm_portal *portal)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    uint8_t diff, old_ci = eqcr->ci;
#ifdef QM_CHECKING
    ASSERT_COND(eqcr->cmode == e_QmPortalEqcrCCE);
#endif /* QM_CHECKING */
    eqcr->ci = (uint8_t)(FUNC2(EQCR_CI) & (QM_EQCR_SIZE - 1));
    FUNC3(EQCR_CI);
    diff = FUNC1(QM_EQCR_SIZE, old_ci, eqcr->ci);
    eqcr->available += diff;
    return diff;
}