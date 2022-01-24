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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC3 (char*,char**,int) ; 

int
FUNC4(int argc, char **argv)
{
	unsigned long ret;
	char *endp;

	if (argc < 2) {
		FUNC1(stderr, "usage:\n\t%s (retcode)\n", FUNC2());
		FUNC0(255);
	}
	ret = FUNC3(argv[1], &endp, 10);

	FUNC1(stderr, "%s exiting with status %lu\n", FUNC2(), ret);
	return ret;
}