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
typedef  int /*<<< orphan*/  state_func_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEATH_WATCH ; 
 scalar_t__ ECHILD ; 
 scalar_t__ ESRCH ; 
#define  SIGKILL 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  _PATH_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ clang ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  single_user ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static state_func_t
FUNC6(void)
{
	int i;
	pid_t pid;
	static const int death_sigs[2] = { SIGTERM, SIGKILL };

	FUNC3(_PATH_CONSOLE);

	for (i = 0; i < 2; ++i) {
		if (FUNC2(-1, death_sigs[i]) == -1 && errno == ESRCH)
			return (state_func_t) single_user;

		clang = 0;
		FUNC0(DEATH_WATCH);
		do
			if ((pid = FUNC4(-1, (int *)0, 0)) != -1)
				FUNC1(pid);
		while (clang == 0 && errno != ECHILD);

		if (errno == ECHILD)
			return (state_func_t) single_user;
	}

	FUNC5("some processes would not die; ps axl advised");

	return (state_func_t) single_user;
}