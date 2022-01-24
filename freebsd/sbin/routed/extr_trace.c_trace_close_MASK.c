#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ftrace ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lastlog_time ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

void
FUNC6(int zap_stdio)
{
	int fd;


	FUNC3(stdout);
	FUNC3(stderr);

	if (ftrace != NULL && zap_stdio) {
		if (ftrace != stdout)
			FUNC2(ftrace);
		ftrace = NULL;
		fd = FUNC5(_PATH_DEVNULL, O_RDWR);
		if (fd < 0)
			return;
		if (FUNC4(STDIN_FILENO))
			(void)FUNC1(fd, STDIN_FILENO);
		if (FUNC4(STDOUT_FILENO))
			(void)FUNC1(fd, STDOUT_FILENO);
		if (FUNC4(STDERR_FILENO))
			(void)FUNC1(fd, STDERR_FILENO);
		(void)FUNC0(fd);
	}
	lastlog_time.tv_sec = 0;
}