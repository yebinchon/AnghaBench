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
struct ck_barrier_centralized_state {unsigned int sense; } ;
struct ck_barrier_centralized {int /*<<< orphan*/  sense; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

void
FUNC7(struct ck_barrier_centralized *barrier,
    struct ck_barrier_centralized_state *state,
    unsigned int n_threads)
{
	unsigned int sense, value;

	/*
	 * Every execution context has a sense associated with it.
	 * This sense is reversed when the barrier is entered. Every
	 * thread will spin on the global sense until the last thread
	 * reverses it.
	 */
	sense = state->sense = ~state->sense;
	value = FUNC0(&barrier->value, 1);
	if (value == n_threads - 1) {
		FUNC6(&barrier->value, 0);
		FUNC3();
		FUNC6(&barrier->sense, sense);
		return;
	}

	FUNC2();
	while (sense != FUNC4(&barrier->sense))
		FUNC5();

	FUNC1();
	return;
}