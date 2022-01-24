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
 int FUNC0 (unsigned char) ; 
 int EOT ; 
 int ERASE ; 
 scalar_t__ IG ; 
 int KILL ; 
 int /*<<< orphan*/  LC ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ PF ; 
 scalar_t__ PP ; 
 unsigned char PPP_CONTROL ; 
 unsigned char PPP_CONTROL_ESCAPED ; 
 unsigned char PPP_ESCAPE ; 
 unsigned char PPP_FRAME ; 
 unsigned char PPP_LCP_HI ; 
 unsigned char PPP_LCP_LOW ; 
 unsigned char PPP_STATION ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 scalar_t__ UC ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int crmod ; 
 int digit ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  intrupt ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (char) ; 
 int lower ; 
 char* name ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmode ; 
 char FUNC18 (char) ; 
 int /*<<< orphan*/  ttyn ; 
 int upper ; 

__attribute__((used)) static int
FUNC19(void)
{
	int c;
	char *np;
	unsigned char cs;
	int ppp_state = 0;
	int ppp_connection = 0;

	/*
	 * Interrupt may happen if we use CBREAK mode
	 */
	if (FUNC13(intrupt)) {
		FUNC14(SIGINT, SIG_IGN);
		return (0);
	}
	FUNC14(SIGINT, interrupt);
	FUNC12(1);
	FUNC7();
	FUNC6();
	if (PF > 0) {
		FUNC15(PF);
		PF = 0;
	}
	if (FUNC17(STDIN_FILENO, TCSANOW, &tmode) < 0) {
		FUNC16(LOG_ERR, "%s: %m", ttyn);
		FUNC2(1);
	}
	crmod = digit = lower = upper = 0;
	np = name;
	for (;;) {
		FUNC6();
		if (FUNC11(STDIN_FILENO, &cs, 1) <= 0)
			FUNC2(0);
		if ((c = cs&0177) == 0)
			return (0);

		/* PPP detection state machine..
		   Look for sequences:
		   PPP_FRAME, PPP_STATION, PPP_ESCAPE, PPP_CONTROL_ESCAPED or
		   PPP_FRAME, PPP_STATION, PPP_CONTROL (deviant from RFC)
		   See RFC1662.
		   Derived from code from Michael Hancock, <michaelh@cet.co.jp>
		   and Erik 'PPP' Olson, <eriko@wrq.com>
		 */

		if (PP && (cs == PPP_FRAME)) {
			ppp_state = 1;
		} else if (ppp_state == 1 && cs == PPP_STATION) {
			ppp_state = 2;
		} else if (ppp_state == 2 && cs == PPP_ESCAPE) {
			ppp_state = 3;
		} else if ((ppp_state == 2 && cs == PPP_CONTROL)
			|| (ppp_state == 3 && cs == PPP_CONTROL_ESCAPED)) {
			ppp_state = 4;
		} else if (ppp_state == 4 && cs == PPP_LCP_HI) {
			ppp_state = 5;
		} else if (ppp_state == 5 && cs == PPP_LCP_LOW) {
			ppp_connection = 1;
			break;
		} else {
			ppp_state = 0;
		}

		if (c == EOT || c == FUNC0('d'))
			FUNC2(0);
		if (c == '\r' || c == '\n' || np >= &name[sizeof name-1]) {
			FUNC9("\r\n");
			break;
		}
		if (FUNC4(c))
			lower = 1;
		else if (FUNC5(c))
			upper = 1;
		else if (c == ERASE || c == '\b' || c == 0177) {
			if (np > name) {
				np--;
				if (FUNC1(&tmode) >= 1200)
					FUNC10("\b \b");
				else
					FUNC8(cs);
			}
			continue;
		} else if (c == KILL || c == FUNC0('u')) {
			FUNC8('\r');
			if (FUNC1(&tmode) < 1200)
				FUNC8('\n');
			/* this is the way they do it down under ... */
			else if (np > name)
				FUNC10("                                     \r");
			FUNC7();
			digit = lower = upper = 0;
			np = name;
			continue;
		} else if (FUNC3(c))
			digit = 1;
		if (IG && (c <= ' ' || c > 0176))
			continue;
		*np++ = c;
		FUNC8(cs);
	}
	FUNC14(SIGINT, SIG_IGN);
	*np = 0;
	if (c == '\r')
		crmod = 1;
	if ((upper && !lower && !LC) || UC)
		for (np = name; *np; np++)
			if (FUNC5(*np))
				*np = FUNC18(*np);
	return (1 + ppp_connection);
}