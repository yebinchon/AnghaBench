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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

int
FUNC7(int nochdir, int noclose)
{
	int fd;

	switch (FUNC4()) {
	case -1:
		return (-1);
	case 0:
		break;
	default:
		FUNC0(0);
	}

	if (FUNC6() == -1)
		return (-1);

	if (!nochdir)
		(void)FUNC1("/");

	if (!noclose && (fd = FUNC5(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
		(void)FUNC3(fd, STDIN_FILENO);
		(void)FUNC3(fd, STDOUT_FILENO);
		(void)FUNC3(fd, STDERR_FILENO);
		if (fd > 2)
			(void)FUNC2 (fd);
	}
	return (0);
}