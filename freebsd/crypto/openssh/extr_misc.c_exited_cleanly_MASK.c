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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_DEBUG1 ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_INFO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 
 char* FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC7(pid_t pid, const char *tag, const char *cmd, int quiet)
{
	int status;

	while (FUNC6(pid, &status, 0) == -1) {
		if (errno != EINTR) {
			FUNC4("%s: waitpid: %s", tag, FUNC5(errno));
			return -1;
		}
	}
	if (FUNC1(status)) {
		FUNC4("%s %s exited on signal %d", tag, cmd, FUNC2(status));
		return -1;
	} else if (FUNC0(status) != 0) {
		FUNC3(quiet ? SYSLOG_LEVEL_DEBUG1 : SYSLOG_LEVEL_INFO,
		    "%s %s failed, status %d", tag, cmd, FUNC0(status));
		return -1;
	}
	return 0;
}