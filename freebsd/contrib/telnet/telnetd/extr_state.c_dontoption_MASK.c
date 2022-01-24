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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KLUDGE_LINEMODE ; 
 int /*<<< orphan*/  KLUDGE_OK ; 
 int /*<<< orphan*/  REAL_LINEMODE ; 
 int /*<<< orphan*/  TD_OPTIONS ; 
#define  TELOPT_BINARY 130 
#define  TELOPT_ECHO 129 
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
#define  TELOPT_SGA 128 
 int /*<<< orphan*/  WILL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lmodetype ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int turn_on_sga ; 
 scalar_t__* will_wont_resp ; 

void
FUNC15(int option)
{
	/*
	 * Process client input.
	 */


	FUNC0(TD_OPTIONS, FUNC7("td: recv dont", option));

	if (will_wont_resp[option]) {
		will_wont_resp[option]--;
		if (will_wont_resp[option] && FUNC5(option))
			will_wont_resp[option]--;
	}
	if ((will_wont_resp[option] == 0) && (FUNC6(option))) {
		switch (option) {
		case TELOPT_BINARY:
			FUNC3();
			FUNC13(0);
			FUNC12();
			break;

		case TELOPT_ECHO:	/* we should stop echoing */
#ifdef	LINEMODE
# ifdef	KLUDGELINEMODE
			if ((lmodetype != REAL_LINEMODE) &&
			    (lmodetype != KLUDGE_LINEMODE))
# else
			if (his_state_is_wont(TELOPT_LINEMODE))
# endif
#endif
			{
				FUNC3();
				FUNC14(0);
				FUNC12();
			}
			break;

		case TELOPT_SGA:
#if	defined(LINEMODE) && defined(KLUDGELINEMODE)
			/*
			 * If kludge linemode is in use, then we
			 * must process an incoming do SGA for
			 * linemode purposes.
			 */
			if ((lmodetype == KLUDGE_LINEMODE) ||
			    (lmodetype == KLUDGE_OK)) {
				/*
				 * The client is asking us to turn
				 * linemode on.
				 */
				lmodetype = KLUDGE_LINEMODE;
				clientstat(TELOPT_LINEMODE, WILL, 0);
				/*
				 * If we did not turn line mode on,
				 * then what do we say?  Will SGA?
				 * This violates design of telnet.
				 * Gross.  Very Gross.
				 */
			}
			break;
#else
			FUNC11(option);
			if (FUNC4(option))
				FUNC9(option, 0);
			FUNC10(option);
			if (turn_on_sga ^= 1)
				FUNC8(option, 1);
			return;
#endif	/* defined(LINEMODE) && defined(KLUDGELINEMODE) */

		default:
			break;
		}

		FUNC11(option);
		if (FUNC4(option))
			FUNC9(option, 0);
	}
	FUNC10(option);

}