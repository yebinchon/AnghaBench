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
typedef  int /*<<< orphan*/  u_char ;
struct thread {int td_pinned; int /*<<< orphan*/  td_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  linux_epoch ; 
 int /*<<< orphan*/  linux_synchronize_rcu_cb ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int) ; 
 int FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*) ; 

void
FUNC12(void)
{
	struct thread *td;
	int was_bound;
	int old_cpu;
	int old_pinned;
	u_char old_prio;

	if (FUNC3())
		return;

	FUNC4(WARN_GIANTOK | WARN_SLEEPOK, NULL,
	    "linux_synchronize_rcu() can sleep");

	td = curthread;

	/*
	 * Synchronizing RCU might change the CPU core this function
	 * is running on. Save current values:
	 */
	FUNC10(td);

	FUNC0();

	old_cpu = FUNC1(cpuid);
	old_pinned = td->td_pinned;
	old_prio = td->td_priority;
	was_bound = FUNC7(td);
	FUNC9(td);
	td->td_pinned = 0;
	FUNC6(td, old_cpu);

	FUNC5(&linux_epoch,
	    &linux_synchronize_rcu_cb, NULL);

	/* restore CPU binding, if any */
	if (was_bound != 0) {
		FUNC6(td, old_cpu);
	} else {
		/* get thread back to initial CPU, if any */
		if (old_pinned != 0)
			FUNC6(td, old_cpu);
		FUNC9(td);
	}
	/* restore pinned after bind */
	td->td_pinned = old_pinned;

	/* restore thread priority */
	FUNC8(td, old_prio);
	FUNC11(td);

	FUNC2();
}