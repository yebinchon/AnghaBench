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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCD_UNCONFIGALL ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  ccdconf ; 
 scalar_t__ FUNC0 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  lineno ; 
 char** FUNC8 (char**,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(int action)
{
	FILE *f;
	char line[_POSIX2_LINE_MAX];
	char *cp, **argv;
	int argc, rval;
	gid_t egid;

	rval = 0;
	egid = FUNC6();
	if (FUNC9(FUNC7()) != 0)
		FUNC1(1, "setegid failed");
	if ((f = FUNC4(ccdconf, "r")) == NULL) {
		if (FUNC9(egid) != 0)
			FUNC1(1, "setegid failed");
		FUNC12("fopen: %s", ccdconf);
		return (1);
	}
	if (FUNC9(egid) != 0)
		FUNC1(1, "setegid failed");

	while (FUNC3(line, sizeof(line), f) != NULL) {
		argc = 0;
		argv = NULL;
		++lineno;
		if ((cp = FUNC10(line, '\n')) != NULL)
			*cp = '\0';

		/* Break up the line and pass it's contents to do_single(). */
		if (line[0] == '\0')
			goto end_of_line;
		for (cp = line; (cp = FUNC11(cp, " \t")) != NULL; cp = NULL) {
			if (*cp == '#')
				break;
			if ((argv = FUNC8(argv,
			    sizeof(char *) * ++argc)) == NULL) {
				FUNC13("no memory to configure ccds");
				return (1);
			}
			argv[argc - 1] = cp;
			/*
			 * If our action is to unconfigure all, then pass
			 * just the first token to do_single() and ignore
			 * the rest.  Since this will be encountered on
			 * our first pass through the line, the Right
			 * Thing will happen.
			 */
			if (action == CCD_UNCONFIGALL) {
				if (FUNC0(argc, argv, action))
					rval = 1;
				goto end_of_line;
			}
		}
		if (argc != 0)
			if (FUNC0(argc, argv, action))
				rval = 1;

 end_of_line:
		if (argv != NULL)
			FUNC5(argv);
	}

	(void)FUNC2(f);
	return (rval);
}