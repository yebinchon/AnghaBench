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
 int /*<<< orphan*/  NO_LINEMODE ; 
 int /*<<< orphan*/  TD_OPTIONS ; 
#define  TELOPT_BINARY 142 
#define  TELOPT_ECHO 141 
#define  TELOPT_ENCRYPT 140 
#define  TELOPT_LFLOW 139 
#define  TELOPT_LINEMODE 138 
#define  TELOPT_LOGOUT 137 
#define  TELOPT_NAWS 136 
#define  TELOPT_NEW_ENVIRON 135 
#define  TELOPT_OLD_ENVIRON 134 
#define  TELOPT_SGA 133 
#define  TELOPT_STATUS 132 
#define  TELOPT_TM 131 
#define  TELOPT_TSPEED 130 
#define  TELOPT_TTYPE 129 
#define  TELOPT_XDISPLOC 128 
 int /*<<< orphan*/  WONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  linemode ; 
 int /*<<< orphan*/  lmodetype ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int const) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  turn_on_sga ; 
 scalar_t__* will_wont_resp ; 

void
FUNC18(int option)
{
	int changeok = 0;

	/*
	 * Process client input.
	 */

	FUNC0(TD_OPTIONS, FUNC8("td: recv do", option));

	if (will_wont_resp[option]) {
		will_wont_resp[option]--;
		if (will_wont_resp[option] && FUNC5(option))
			will_wont_resp[option]--;
	}
	if ((will_wont_resp[option] == 0) && (FUNC6(option))) {
		switch (option) {
		case TELOPT_ECHO:
#ifdef	LINEMODE
# ifdef	KLUDGELINEMODE
			if (lmodetype == NO_LINEMODE)
# else
			if (his_state_is_wont(TELOPT_LINEMODE))
# endif
#endif
			{
				FUNC4();
				FUNC17(1);
				FUNC15();
			}
			changeok++;
			break;

		case TELOPT_BINARY:
			FUNC4();
			FUNC16(1);
			FUNC15();
			changeok++;
			break;

		case TELOPT_SGA:
#if	defined(LINEMODE) && defined(KLUDGELINEMODE)
			/*
			 * If kludge linemode is in use, then we must
			 * process an incoming do SGA for linemode
			 * purposes.
			 */
			if (lmodetype == KLUDGE_LINEMODE) {
				/*
				 * Receipt of "do SGA" in kludge
				 * linemode is the peer asking us to
				 * turn off linemode.  Make note of
				 * the request.
				 */
				clientstat(TELOPT_LINEMODE, WONT, 0);
				/*
				 * If linemode did not get turned off
				 * then don't tell peer that we did.
				 * Breaking here forces a wont SGA to
				 * be returned.
				 */
				if (linemode)
					break;
			}
#else
			turn_on_sga = 0;
#endif	/* defined(LINEMODE) && defined(KLUDGELINEMODE) */
			changeok++;
			break;

		case TELOPT_STATUS:
			changeok++;
			break;

		case TELOPT_TM:
			/*
			 * Special case for TM.  We send a WILL, but
			 * pretend we sent a WONT.
			 */
			FUNC9(option, 0);
			FUNC14(option);
			FUNC12(option);
			return;

		case TELOPT_LOGOUT:
			/*
			 * When we get a LOGOUT option, respond
			 * with a WILL LOGOUT, make sure that
			 * it gets written out to the network,
			 * and then just go away...
			 */
			FUNC13(TELOPT_LOGOUT);
			FUNC9(TELOPT_LOGOUT, 0);
			FUNC11(TELOPT_LOGOUT);
			(void)FUNC7();
			FUNC1(0);
			/* NOT REACHED */
			break;

#ifdef	ENCRYPTION
		case TELOPT_ENCRYPT:
			changeok++;
			break;
#endif	/* ENCRYPTION */
		case TELOPT_LINEMODE:
		case TELOPT_TTYPE:
		case TELOPT_NAWS:
		case TELOPT_TSPEED:
		case TELOPT_LFLOW:
		case TELOPT_XDISPLOC:
#ifdef	TELOPT_ENVIRON
		case TELOPT_NEW_ENVIRON:
#endif
		case TELOPT_OLD_ENVIRON:
		default:
			break;
		}
		if (changeok) {
			FUNC13(option);
			FUNC9(option, 0);
		} else {
			will_wont_resp[option]++;
			FUNC10(option, 0);
		}
	}
	FUNC11(option);

}