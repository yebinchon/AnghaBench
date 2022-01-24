#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_9__ {int se_process; int se_flags; int /*<<< orphan*/  se_started; struct TYPE_9__* se_prev; struct TYPE_9__* se_next; } ;
typedef  TYPE_1__ session_t ;
typedef  int pid_t ;

/* Variables and functions */
 int SE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  clean_ttys ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  requested_transition ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_1__* sessions ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(pid_t pid)
{
	session_t *sp, *sprev, *snext;

	if (! sessions)
		return;

	if (! (sp = FUNC2(pid)))
		return;

	FUNC1(sp);
	sp->se_process = 0;

	if (sp->se_flags & SE_SHUTDOWN ||
	    FUNC4(sp)) {
		if ((sprev = sp->se_prev) != NULL)
			sprev->se_next = sp->se_next;
		else
			sessions = sp->se_next;
		if ((snext = sp->se_next) != NULL)
			snext->se_prev = sp->se_prev;
		FUNC3(sp);
		return;
	}

	if ((pid = FUNC5(sp)) == -1) {
		/* serious trouble */
		requested_transition = clean_ttys;
		return;
	}

	sp->se_process = pid;
	sp->se_started = FUNC6((time_t *) 0);
	FUNC0(sp);
}