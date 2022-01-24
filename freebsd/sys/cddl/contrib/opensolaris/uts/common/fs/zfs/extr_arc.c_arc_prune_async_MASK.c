#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_pfunc; int /*<<< orphan*/  p_refcnt; int /*<<< orphan*/  p_adjust; } ;
typedef  TYPE_1__ arc_prune_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TASKQID_INVALID ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  arc_prune_list ; 
 int /*<<< orphan*/  arc_prune_mtx ; 
 int /*<<< orphan*/  arc_prune_task ; 
 int /*<<< orphan*/  arc_prune_taskq ; 
 int /*<<< orphan*/  arcstat_prune ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(int64_t adjust)
{
	arc_prune_t *ap;

	FUNC3(&arc_prune_mtx);
	for (ap = FUNC1(&arc_prune_list); ap != NULL;
	    ap = FUNC2(&arc_prune_list, ap)) {

		if (FUNC7(&ap->p_refcnt) >= 2)
			continue;

		FUNC6(&ap->p_refcnt, ap->p_pfunc);
		ap->p_adjust = adjust;
		if (FUNC5(arc_prune_taskq, arc_prune_task,
		    ap, TQ_SLEEP) == TASKQID_INVALID) {
			FUNC8(&ap->p_refcnt, ap->p_pfunc);
			continue;
		}
		FUNC0(arcstat_prune);
	}
	FUNC4(&arc_prune_mtx);
}