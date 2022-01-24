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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(const char *path)
{
	FILE *file;
	int pid;

	FUNC4("Validating contents of pidfile '%s'\n", path);

	if ((file = FUNC1(path, "r")) == NULL)
		FUNC0(EXIT_FAILURE, "Cannot open expected pidfile '%s'", path);

	if (FUNC2(file, "%d", &pid) == -1)
		FUNC0(EXIT_FAILURE, "Failed to read pid from pidfile '%s'",
		    path);

	FUNC4("Read pid %d, current pid %d\n", pid, FUNC3());
	if (pid != FUNC3())
		FUNC0(EXIT_FAILURE, "Pid in pidfile (%d) does not match "
		    "current pid (%d)", pid, FUNC3());
}