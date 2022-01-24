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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HIGHDENSITYTREC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTREC ; 
 char* _PATH_DEVNULL ; 
 char* _PATH_TTY ; 
 scalar_t__ bflag ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* host ; 
 int /*<<< orphan*/ * magtape ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntrec ; 
 int /*<<< orphan*/  pipecmdin ; 
 int /*<<< orphan*/  pipein ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * terminal ; 

void
FUNC13(char *source, int ispipecommand)
{
	FUNC0();
	if (bflag)
		FUNC6(ntrec);
	else
		FUNC6(FUNC1(NTREC, HIGHDENSITYTREC));
	terminal = stdin;

	if (ispipecommand)
		pipecmdin++;
	else
#ifdef RRESTORE
	if (strchr(source, ':')) {
		host = source;
		source = strchr(host, ':');
		*source++ = '\0';
		if (rmthost(host) == 0)
			done(1);
	} else
#endif
	if (FUNC10(source, "-") == 0) {
		/*
		 * Since input is coming from a pipe we must establish
		 * our own connection to the terminal.
		 */
		terminal = FUNC3(_PATH_TTY, "r");
		if (terminal == NULL) {
			(void)FUNC4(stderr, "cannot open %s: %s\n",
			    _PATH_TTY, FUNC12(errno));
			terminal = FUNC3(_PATH_DEVNULL, "r");
			if (terminal == NULL) {
				(void)FUNC4(stderr, "cannot open %s: %s\n",
				    _PATH_DEVNULL, FUNC12(errno));
				FUNC2(1);
			}
		}
		pipein++;
	}
	/* no longer need or want root privileges */
	if (FUNC8(FUNC5()) != 0) {
		FUNC4(stderr, "setuid failed\n");
		FUNC2(1);
	}
	magtape = FUNC11(source);
	if (magtape == NULL) {
		FUNC4(stderr, "Cannot allocate space for magtape buffer\n");
		FUNC2(1);
	}
}