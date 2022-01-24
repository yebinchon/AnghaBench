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
struct ck_barrier_mcs_state {size_t vpid; int /*<<< orphan*/  sense; } ;
struct ck_barrier_mcs {int /*<<< orphan*/ * children; int /*<<< orphan*/  parentsense; int /*<<< orphan*/  parent; int /*<<< orphan*/  childnotready; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ck_barrier_mcs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ck_barrier_mcs *barrier,
    struct ck_barrier_mcs_state *state)
{

	/*
	 * Wait until all children have reached the barrier and are done waiting
	 * for their children.
	 */
	while (FUNC0(barrier[state->vpid].childnotready) == false)
		FUNC4();

	/* Reinitialize for next barrier. */
	FUNC1(&barrier[state->vpid]);

	/* Inform parent thread and its children have arrived at the barrier. */
	FUNC5(barrier[state->vpid].parent, 0);

	/* Wait until parent indicates all threads have arrived at the barrier. */
	if (state->vpid != 0) {
		while (FUNC3(&barrier[state->vpid].parentsense) != state->sense)
			FUNC4();
	}

	/* Inform children of successful barrier. */
	FUNC5(barrier[state->vpid].children[0], state->sense);
	FUNC5(barrier[state->vpid].children[1], state->sense);
	state->sense = ~state->sense;
	FUNC2();
	return;
}