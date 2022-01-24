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
typedef  int /*<<< orphan*/  wd ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 
 scalar_t__ dochroot ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 scalar_t__ guest ; 
 int logging ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC6(char *cmd, char *file1, char *file2, off_t cnt)
{
	char *msg = NULL;
	char wd[MAXPATHLEN + 1];

	if (logging <= 1)
		return;

	if (FUNC2(wd, sizeof(wd) - 1) == NULL)
		FUNC3(wd, FUNC4(errno));

	FUNC0(&msg, "%s", cmd);
	if (file1)
		FUNC0(&msg, " %s", file1);
	if (file2)
		FUNC0(&msg, " %s", file2);
	if (cnt >= 0)
		FUNC0(&msg, " = %jd bytes", (intmax_t)cnt);
	FUNC0(&msg, " (wd: %s", wd);
	if (guest || dochroot)
		FUNC0(&msg, "; chrooted");
	FUNC0(&msg, ")");
	FUNC5(LOG_INFO, "%s", msg);
	FUNC1(msg);
}