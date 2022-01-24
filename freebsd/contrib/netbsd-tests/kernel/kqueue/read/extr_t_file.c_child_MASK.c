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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FILENAME ; 
 int NLINES ; 
 int O_APPEND ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int i, n, fd;

	(void)FUNC4(1);

	for (i = 0; i < NLINES; ++i) {
		fd = FUNC3(FILENAME, O_WRONLY|O_APPEND, 0644);
		if (fd < 0)
			FUNC2(EXIT_FAILURE, "open()");

		n = FUNC5(fd, "foo\n", 4);
		if (n < 0)
			FUNC2(EXIT_FAILURE, "write()");

		(void)FUNC1(fd);
		(void)FUNC4(1);
	}
	FUNC0(0);
}