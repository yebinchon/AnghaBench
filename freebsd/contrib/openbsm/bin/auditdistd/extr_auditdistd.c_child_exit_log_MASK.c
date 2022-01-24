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

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned int,int) ; 

__attribute__((used)) static void
FUNC6(const char *type, unsigned int pid, int status)
{

	if (FUNC1(status) && FUNC0(status) == 0) {
		FUNC4(1, "%s process exited gracefully (pid=%u).",
		    type, pid);
	} else if (FUNC2(status)) {
		FUNC5("%s process killed (pid=%u, signal=%d).",
		    type, pid, FUNC3(status));
	} else {
		FUNC5("%s process exited ungracefully (pid=%u, exitcode=%d).",
		    type, pid, FUNC1(status) ? FUNC0(status) : -1);
	}
}