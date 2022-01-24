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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 

__attribute__((used)) static void
FUNC7(int *argcp, char **argvp[])
{
	int argc, flags;
	char *ap, **argv, *flagsp, **nargv, *p;

	/* Setup. */
	argv = *argvp;
	argc = *argcp;

	/*
	 * Return if no arguments or first argument has leading
	 * dash or slash.
	 */
	ap = argv[1];
	if (argc == 1 || *ap == '-' || *ap == '/')
		return;

	/* Allocate space for new arguments. */
	if ((*argvp = nargv = FUNC2((argc + 1) * sizeof(char *))) == NULL ||
	    (p = flagsp = FUNC2(FUNC4(ap) + 2)) == NULL)
		FUNC0(1, NULL);

	*nargv++ = *argv;
	argv += 2;

	for (flags = 0; *ap; ++ap) {
		switch (*ap) {
		case 'B':
		case 'b':
		case 'd':
		case 'f':
		case 'D':
		case 'C':
		case 'h':
		case 's':
		case 'T':
			if (*argv == NULL) {
				FUNC6("option requires an argument -- %c", *ap);
				FUNC5();
			}
			if ((nargv[0] = FUNC2(FUNC4(*argv) + 2 + 1)) == NULL)
				FUNC0(1, NULL);
			nargv[0][0] = '-';
			nargv[0][1] = *ap;
			(void)FUNC3(&nargv[0][2], *argv);
			++argv;
			++nargv;
			break;
		default:
			if (!flags) {
				*p++ = '-';
				flags = 1;
			}
			*p++ = *ap;
			break;
		}
	}

	/* Terminate flags. */
	if (flags) {
		*p = '\0';
		*nargv++ = flagsp;
	} else
		FUNC1(flagsp);

	/* Copy remaining arguments. */
	while ((*nargv++ = *argv++));

	/* Update argument count. */
	*argcp = nargv - *argvp - 1;
}