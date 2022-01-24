#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  term ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {scalar_t__ se_started; scalar_t__ se_nspace; int /*<<< orphan*/  se_device; int /*<<< orphan*/ * se_getty_argv; int /*<<< orphan*/  se_type; scalar_t__ se_window; } ;
typedef  TYPE_1__ session_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ GETTY_NSPACE ; 
 scalar_t__ GETTY_SLEEP ; 
 scalar_t__ GETTY_SPACING ; 
 int /*<<< orphan*/  RESOURCE_GETTY ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 unsigned int WINDOW_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static pid_t
FUNC14(session_t *sp)
{
	pid_t pid;
	sigset_t mask;
	time_t current_time = FUNC12((time_t *) 0);
	int too_quick = 0;
	char term[64], *env[2];

	if (current_time >= sp->se_started &&
	    current_time - sp->se_started < GETTY_SPACING) {
		if (++sp->se_nspace > GETTY_NSPACE) {
			sp->se_nspace = 0;
			too_quick = 1;
		}
	} else
		sp->se_nspace = 0;

	/*
	 * fork(), not vfork() -- we can't afford to block.
	 */
	if ((pid = FUNC3()) == -1) {
		FUNC1("can't fork for getty on port %s: %m", sp->se_device);
		return -1;
	}

	if (pid)
		return pid;

	if (too_quick) {
		FUNC13("getty repeating too quickly on port %s, sleeping %d secs",
		    sp->se_device, GETTY_SLEEP);
		FUNC7((unsigned) GETTY_SLEEP);
	}

	if (sp->se_window) {
		FUNC9(sp);
		FUNC7(WINDOW_WAIT);
	}

	FUNC5(&mask);
	FUNC6(SIG_SETMASK, &mask, NULL);

#ifdef LOGIN_CAP
	setprocresources(RESOURCE_GETTY);
#endif
	if (sp->se_type) {
		/* Don't use malloc after fork */
		FUNC10(term, "TERM=");
		FUNC11(term, sp->se_type, sizeof(term));
		env[0] = term;
		env[1] = NULL;
	} else
		env[0] = NULL;
	FUNC2(sp->se_getty_argv[0], sp->se_getty_argv, env);
	FUNC8("can't exec getty '%s' for port %s: %m",
		sp->se_getty_argv[0], sp->se_device);
	FUNC0(1);
}