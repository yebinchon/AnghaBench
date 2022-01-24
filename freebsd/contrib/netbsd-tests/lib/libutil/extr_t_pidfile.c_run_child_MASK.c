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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EXIT_SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int in_child ; 
 int FUNC6 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void (*child)(const char *), const char *cookie)
{
	pid_t pid;

	pid = FUNC5();
	FUNC0(pid != -1);
	if (pid == 0) {
		in_child = true;
		child(cookie);
		FUNC3(false);
		/* UNREACHABLE */
	} else {
		int status;

		FUNC0(FUNC6(pid, &status, 0) != -1);
		if (!FUNC2(status) || FUNC1(status) != EXIT_SUCCESS)
			FUNC4("See stderr for details");
	}
}