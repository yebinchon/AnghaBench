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
struct ck_barrier_dissemination_state {int /*<<< orphan*/  tid; int /*<<< orphan*/  sense; scalar_t__ parity; } ;
struct ck_barrier_dissemination {int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void
FUNC1(struct ck_barrier_dissemination *barrier,
    struct ck_barrier_dissemination_state *state)
{

	state->parity = 0;
	state->sense = ~0;
	state->tid = FUNC0(&barrier->tid, 1);
	return;
}