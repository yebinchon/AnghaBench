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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  state_func_t ;
struct TYPE_6__ {int se_process; int /*<<< orphan*/  se_started; struct TYPE_6__* se_next; } ;
typedef  TYPE_1__ session_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ clean_ttys ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ requested_transition ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* sessions ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static state_func_t
FUNC8(void)
{
	pid_t pid;
	session_t *sp;

	requested_transition = 0;

	/*
	 * If the administrator has not set the security level to -1
	 * to indicate that the kernel should not run multiuser in secure
	 * mode, and the run script has not set a higher level of security
	 * than level 1, then put the kernel into secure mode.
	 */
	if (FUNC2() == 0)
		FUNC4(1);

	for (sp = sessions; sp; sp = sp->se_next) {
		if (sp->se_process)
			continue;
		if (FUNC3(sp))
			continue;
		if ((pid = FUNC5(sp)) == -1) {
			/* serious trouble */
			requested_transition = clean_ttys;
			break;
		}
		sp->se_process = pid;
		sp->se_started = FUNC6((time_t *) 0);
		FUNC0(sp);
	}

	while (!requested_transition)
		if ((pid = FUNC7(-1, (int *) 0, 0)) != -1)
			FUNC1(pid);

	return (state_func_t) requested_transition;
}