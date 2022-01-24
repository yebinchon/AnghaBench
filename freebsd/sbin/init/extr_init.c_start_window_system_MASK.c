#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  term ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_3__ {int /*<<< orphan*/  se_device; int /*<<< orphan*/ * se_window_argv; int /*<<< orphan*/  se_type; } ;
typedef  TYPE_1__ session_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_WINDOW ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(session_t *sp)
{
	pid_t pid;
	sigset_t mask;
	char term[64], *env[2];
	int status;

	if ((pid = FUNC3()) == -1) {
		FUNC1("can't fork for window system on port %s: %m",
		    sp->se_device);
		/* hope that getty fails and we can try again */
		return;
	}
	if (pid) {
		FUNC11(-1, &status, 0);
		return;
	}

	/* reparent window process to the init to not make a zombie on exit */
	if ((pid = FUNC3()) == -1) {
		FUNC1("can't fork for window system on port %s: %m",
		    sp->se_device);
		FUNC0(1);
	}
	if (pid)
		FUNC0(0);

	FUNC6(&mask);
	FUNC7(SIG_SETMASK, &mask, NULL);

	if (FUNC5() < 0)
		FUNC1("setsid failed (window) %m");

#ifdef LOGIN_CAP
	setprocresources(RESOURCE_WINDOW);
#endif
	if (sp->se_type) {
		/* Don't use malloc after fork */
		FUNC9(term, "TERM=");
		FUNC10(term, sp->se_type, sizeof(term));
		env[0] = term;
		env[1] = NULL;
	}
	else
		env[0] = NULL;
	FUNC2(sp->se_window_argv[0], sp->se_window_argv, env);
	FUNC8("can't exec window system '%s' for port %s: %m",
		sp->se_window_argv[0], sp->se_device);
	FUNC0(1);
}