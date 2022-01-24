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
struct qm_mc {scalar_t__ state; int vbit; scalar_t__ rridx; scalar_t__ rr; TYPE_1__* cr; } ;
struct qm_portal {struct qm_mc mc; } ;
struct TYPE_2__ {int __dont_write_directly__verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ mc_hw ; 
 scalar_t__ mc_user ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static __inline__ void FUNC4(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_mc *mc = &portal->mc;
#ifdef QM_CHECKING
    ASSERT_COND(mc->state == mc_user);
#endif /* QM_CHECKING */
    FUNC3();
    mc->cr->__dont_write_directly__verb = (uint8_t)(myverb | mc->vbit);
    FUNC1(mc->cr);
    FUNC2(mc->rr + mc->rridx);
#ifdef QM_CHECKING
    mc->state = mc_hw;
#endif /* QM_CHECKING */
}