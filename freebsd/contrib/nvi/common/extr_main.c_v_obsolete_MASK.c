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
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(
	char *name,
	char *argv[])
{
	size_t len;
	char *p;

	/*
	 * Translate old style arguments into something getopt will like.
	 * Make sure it's not text space memory, because ex modifies the
	 * strings.
	 *	Change "+" into "-c$".
	 *	Change "+<anything else>" into "-c<anything else>".
	 *	Change "-" into "-s"
	 *	The c, T, t and w options take arguments so they can't be
	 *	    special arguments.
	 *
	 * Stop if we find "--" as an argument, the user may want to edit
	 * a file named "+foo".
	 */
	while (*++argv && FUNC1(argv[0], "--"))
		if (argv[0][0] == '+') {
			if (argv[0][1] == '\0') {
				argv[0] = FUNC2("-c$");
				if (argv[0] == NULL)
					goto nomem;
			} else  {
				p = argv[0];
				len = FUNC4(argv[0]);
				argv[0] = FUNC0(len + 2);
				if (argv[0] == NULL)
					goto nomem;
				argv[0][0] = '-';
				argv[0][1] = 'c';
				(void)FUNC3(argv[0] + 2, p + 1, len);
			}
		} else if (argv[0][0] == '-')
			if (argv[0][1] == '\0') {
				argv[0] = FUNC2("-s");
				if (argv[0] == NULL) {
nomem:					FUNC5(name, errno, NULL);
					return (1);
				}
			} else
				if ((argv[0][1] == 'c' || argv[0][1] == 'T' ||
				    argv[0][1] == 't' || argv[0][1] == 'w') &&
				    argv[0][2] == '\0')
					++argv;
	return (0);
}