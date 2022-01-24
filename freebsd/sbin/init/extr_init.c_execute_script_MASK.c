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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 int /*<<< orphan*/  RESOURCE_RC ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  X_OK ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static void
FUNC11(char *argv[])
{
	struct sigaction sa;
	const char *shell, *script;
	int error;

	FUNC1(&sa, sizeof(sa));
	FUNC7(&sa.sa_mask);
	sa.sa_handler = SIG_IGN;
	FUNC6(SIGTSTP, &sa, NULL);
	FUNC6(SIGHUP, &sa, NULL);

	FUNC4();

	FUNC8(SIG_SETMASK, &sa.sa_mask, NULL);
#ifdef LOGIN_CAP
	setprocresources(RESOURCE_RC);
#endif

	/*
	 * Try to directly execute the script first.  If it
	 * fails, try the old method of passing the script path
	 * to sh(1).  Don't complain if it fails because of
	 * the missing execute bit.
	 */
	script = argv[1];
	error = FUNC0(script, X_OK);
	if (error == 0) {
		FUNC2(script, argv + 1);
		FUNC10("can't directly exec %s: %m", script);
	} else if (errno != EACCES) {
		FUNC10("can't access %s: %m", script);
	}

	shell = FUNC3();
	FUNC2(shell, argv);
	FUNC9("can't exec %s for %s: %m", shell, script);
}