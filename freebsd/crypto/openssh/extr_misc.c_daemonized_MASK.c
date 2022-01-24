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
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6(void)
{
	int fd;

	if ((fd = FUNC5(_PATH_TTY, O_RDONLY | O_NOCTTY)) >= 0) {
		FUNC0(fd);
		return 0;	/* have controlling terminal */
	}
	if (FUNC3() != 1)
		return 0;	/* parent is not init */
	if (FUNC4(0) != FUNC2())
		return 0;	/* not session leader */
	FUNC1("already daemonized");
	return 1;
}