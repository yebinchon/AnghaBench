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
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
	int fd;

	fd = FUNC3(_PATH_DEVNULL, O_RDWR);
	if (fd == -1)
		FUNC2(1, "Unable to open %s", _PATH_DEVNULL);

	if (FUNC4() == -1)
		FUNC2(1, "Unable to detach from session");

	if (FUNC1(fd, STDIN_FILENO) == -1)
		FUNC2(1, "Unable to cover stdin");
	if (FUNC1(fd, STDOUT_FILENO) == -1)
		FUNC2(1, "Unable to cover stdout");
	if (FUNC1(fd, STDERR_FILENO) == -1)
		FUNC2(1, "Unable to cover stderr");

	if (fd > STDERR_FILENO)
		FUNC0(fd);
}