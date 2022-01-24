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
struct qm_mr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_mr mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MR_CI ; 
 scalar_t__ e_QmPortalMrCCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC3(struct qm_portal *portal)
{
#ifdef QM_CHECKING
    register struct qm_mr *mr = &portal->mr;
    ASSERT_COND(mr->cmode == e_QmPortalMrCCE);
#endif /* QM_CHECKING */
    FUNC1(MR_CI);
    FUNC2(MR_CI);
}