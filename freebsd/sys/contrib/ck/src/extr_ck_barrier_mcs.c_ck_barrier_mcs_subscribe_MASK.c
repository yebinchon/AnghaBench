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
struct ck_barrier_mcs_state {int /*<<< orphan*/  vpid; int /*<<< orphan*/  sense; } ;
struct ck_barrier_mcs {int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void
FUNC1(struct ck_barrier_mcs *barrier, struct ck_barrier_mcs_state *state)
{

	state->sense = ~0;
	state->vpid = FUNC0(&barrier->tid, 1);
	return;
}