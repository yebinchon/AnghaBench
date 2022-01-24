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
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_DEVZERO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (int,char*,size_t) ; 

int
FUNC5(int argc, char *argv[])
{
	char b[MAXPATHLEN];
	int fd, n;
	size_t len = FUNC1(argv[1]);

	if ((fd = FUNC2(_PATH_DEVZERO, O_RDONLY)) == -1)
		FUNC0();
	if ((n = FUNC4(fd, b, len)) == -1)
		FUNC0();
	(void)FUNC3("%s\n", b);
	return (0);
}