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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* attnmessage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ sig ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 

int
FUNC10(const char *question)
{
	char	replybuffer[64];
	int	back, errcount;
	FILE	*mytty;

	if ((mytty = FUNC5(_PATH_TTY, "r")) == NULL)
		FUNC7("fopen on %s fails: %s\n", _PATH_TTY, FUNC9(errno));
	attnmessage = question;
	timeout = 0;
	FUNC1(0);
	back = -1;
	errcount = 0;
	do {
		if (FUNC4(replybuffer, 63, mytty) == NULL) {
			FUNC2(mytty);
			if (++errcount > 30)	/* XXX	ugly */
				FUNC7("excessive operator query failures\n");
		} else if (replybuffer[0] == 'y' || replybuffer[0] == 'Y') {
			back = 1;
		} else if (replybuffer[0] == 'n' || replybuffer[0] == 'N') {
			back = 0;
		} else {
			(void) FUNC6(stderr,
			    "  DUMP: \"Yes\" or \"No\"?\n");
			(void) FUNC6(stderr,
			    "  DUMP: %s: (\"yes\" or \"no\") ", question);
		}
	} while (back < 0);

	/*
	 *	Turn off the alarm, and reset the signal to trap out..
	 */
	(void) FUNC0(0);
	if (FUNC8(SIGALRM, sig) == SIG_IGN)
		FUNC8(SIGALRM, SIG_IGN);
	(void) FUNC3(mytty);
	return(back);
}