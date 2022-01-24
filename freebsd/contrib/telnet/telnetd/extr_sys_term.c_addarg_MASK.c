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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  net ; 
 scalar_t__ FUNC2 (char**,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static char **
FUNC4(char **argv, const char *val)
{
	char **cpp;

	if (argv == NULL) {
		/*
		 * 10 entries, a leading length, and a null
		 */
		argv = (char **)FUNC1(sizeof(*argv) * 12);
		if (argv == NULL)
			FUNC0(net, "failure allocating argument space");
		*argv++ = (char *)10;
		*argv = (char *)0;
	}
	for (cpp = argv; *cpp; cpp++)
		;
	if (cpp == &argv[(long)argv[-1]]) {
		--argv;
		*argv = (char *)((long)(*argv) + 10);
		argv = (char **)FUNC2(argv, sizeof(*argv)*((long)(*argv) + 2));
		if (argv == NULL)
			FUNC0(net, "failure allocating argument space");
		argv++;
		cpp = &argv[(long)argv[-1] - 10];
	}
	if ((*cpp++ = FUNC3(val)) == NULL)
		FUNC0(net, "failure allocating argument space");
	*cpp = 0;
	return(argv);
}