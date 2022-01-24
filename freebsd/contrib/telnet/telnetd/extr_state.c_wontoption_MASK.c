#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flag; } ;
struct TYPE_4__ {TYPE_1__ defset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KLUDGE_LINEMODE ; 
 int /*<<< orphan*/  NO_AUTOKLUDGE ; 
 int /*<<< orphan*/  NO_LINEMODE ; 
 int /*<<< orphan*/  REAL_LINEMODE ; 
 int /*<<< orphan*/  SLC_CANTCHANGE ; 
 int /*<<< orphan*/  SLC_LEVELBITS ; 
 size_t SLC_XOFF ; 
 size_t SLC_XON ; 
 int /*<<< orphan*/  TD_OPTIONS ; 
#define  TELOPT_AUTHENTICATION 138 
#define  TELOPT_BINARY 137 
#define  TELOPT_ECHO 136 
#define  TELOPT_LFLOW 135 
#define  TELOPT_LINEMODE 134 
#define  TELOPT_NEW_ENVIRON 133 
#define  TELOPT_OLD_ENVIRON 132 
 int const TELOPT_SGA ; 
#define  TELOPT_TM 131 
#define  TELOPT_TSPEED 130 
#define  TELOPT_TTYPE 129 
#define  TELOPT_XDISPLOC 128 
 int /*<<< orphan*/  WONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* do_dont_resp ; 
 int /*<<< orphan*/  environsubopt ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  lmodetype ; 
 int not42 ; 
 int /*<<< orphan*/  oenvironsubopt ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* slctab ; 
 int /*<<< orphan*/  tspeedsubopt ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttypesubopt ; 
 int /*<<< orphan*/  xdisplocsubopt ; 

void
FUNC15(int option)
{
	/*
	 * Process client input.
	 */

	FUNC0(TD_OPTIONS, FUNC7("td: recv wont", option));

	if (do_dont_resp[option]) {
		do_dont_resp[option]--;
		if (do_dont_resp[option] && FUNC4(option))
			do_dont_resp[option]--;
	}
	if (do_dont_resp[option] == 0) {
	    if (FUNC5(option)) {
		/* it is always ok to change to negative state */
		switch (option) {
		case TELOPT_ECHO:
			not42 = 1; /* doesn't seem to be a 4.2 system */
			break;

		case TELOPT_BINARY:
			FUNC6();
			FUNC14(0);
			FUNC12();
			break;

#ifdef	LINEMODE
		case TELOPT_LINEMODE:
# ifdef	KLUDGELINEMODE
			/*
			 * If real linemode is supported, then client is
			 * asking to turn linemode off.
			 */
			if (lmodetype != REAL_LINEMODE)
				break;
			lmodetype = KLUDGE_LINEMODE;
# endif	/* KLUDGELINEMODE */
			clientstat(TELOPT_LINEMODE, WONT, 0);
			break;
#endif	/* LINEMODE */

		case TELOPT_TM:
			/*
			 * If we get a WONT TM, and had sent a DO TM,
			 * don't respond with a DONT TM, just leave it
			 * as is.  Short circut the state machine to
			 * achive this.
			 */
			FUNC11(TELOPT_TM);
			return;

		case TELOPT_LFLOW:
			/*
			 * If we are not going to support flow control
			 * option, then let peer know that we can't
			 * change the flow control characters.
			 */
			slctab[SLC_XON].defset.flag &= ~SLC_LEVELBITS;
			slctab[SLC_XON].defset.flag |= SLC_CANTCHANGE;
			slctab[SLC_XOFF].defset.flag &= ~SLC_LEVELBITS;
			slctab[SLC_XOFF].defset.flag |= SLC_CANTCHANGE;
			break;

#ifdef	AUTHENTICATION
		case TELOPT_AUTHENTICATION:
			auth_finished(0, AUTH_REJECT);
			break;
#endif

		/*
		 * For options that we might spin waiting for
		 * sub-negotiation, if the client turns off the
		 * option rather than responding to the request,
		 * we have to treat it here as if we got a response
		 * to the sub-negotiation, (by updating the timers)
		 * so that we'll break out of the loop.
		 */
		case TELOPT_TTYPE:
			FUNC13(ttypesubopt);
			break;

		case TELOPT_TSPEED:
			FUNC13(tspeedsubopt);
			break;

		case TELOPT_XDISPLOC:
			FUNC13(xdisplocsubopt);
			break;

		case TELOPT_OLD_ENVIRON:
			FUNC13(oenvironsubopt);
			break;

		case TELOPT_NEW_ENVIRON:
			FUNC13(environsubopt);
			break;

		default:
			break;
		}
		FUNC11(option);
		if (FUNC3(option))
			FUNC8(option, 0);
	    } else {
		switch (option) {
		case TELOPT_TM:
#if	defined(LINEMODE) && defined(KLUDGELINEMODE)
			if (lmodetype < NO_AUTOKLUDGE) {
				lmodetype = NO_LINEMODE;
				clientstat(TELOPT_LINEMODE, WONT, 0);
				send_will(TELOPT_SGA, 1);
				send_will(TELOPT_ECHO, 1);
			}
#endif	/* defined(LINEMODE) && defined(KLUDGELINEMODE) */
			break;

#ifdef AUTHENTICATION
		case TELOPT_AUTHENTICATION:
			auth_finished(0, AUTH_REJECT);
			break;
#endif
		default:
			break;
		}
	    }
	}
	FUNC10(option);

}