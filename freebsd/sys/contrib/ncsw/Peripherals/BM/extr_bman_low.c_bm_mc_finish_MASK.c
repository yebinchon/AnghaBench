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
struct bm_mc {scalar_t__ state; } ;
struct bm_portal {struct bm_mc mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bm_mc*) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ mc_idle ; 

void FUNC3(struct bm_portal *portal)
{
    register struct bm_mc *mc = &portal->mc;
    FUNC0(mc->state == mc_idle);
#ifdef BM_CHECKING
    if (mc->state != mc_idle)
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("Losing incomplete MC command"));
#else
    FUNC2(mc);
#endif /* BM_CHECKING */
}