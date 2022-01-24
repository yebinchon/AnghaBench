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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int anonftp ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  lostpeer ; 
 char* outfile ; 
 scalar_t__ redirect_loop ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  toplevel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(int argc, char *argv[])
{
	volatile int	argpos, rval;

	argpos = rval = 0;

	if (FUNC2(toplevel, 1)) {
		if (connected)
			FUNC0(0, NULL);
		if (rval > 0)
			rval = argpos + 1;
		return (rval);
	}
	(void)FUNC5(SIGINT, intr);
	(void)FUNC5(SIGPIPE, lostpeer);

	/*
	 * Loop through as long as there's files to fetch.
	 */
	for (; (rval == 0) && (argpos < argc); argpos++) {
		if (FUNC3(argv[argpos], ':') == NULL)
			break;
		redirect_loop = 0;
		if (!anonftp)
			anonftp = 2;	/* Handle "automatic" transfers. */
		rval = FUNC1(argv[argpos]);
		if (outfile != NULL && FUNC4(outfile, "-") != 0
		    && outfile[0] != '|')
			outfile = NULL;
		if (rval > 0)
			rval = argpos + 1;
	}

	if (connected && rval != -1)
		FUNC0(0, NULL);
	return (rval);
}