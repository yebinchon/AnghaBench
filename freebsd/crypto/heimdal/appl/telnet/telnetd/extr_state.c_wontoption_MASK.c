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
 int /*<<< orphan*/  SLC_CANTCHANGE ; 
 int /*<<< orphan*/  SLC_LEVELBITS ; 
 size_t SLC_XOFF ; 
 size_t SLC_XON ; 
 int /*<<< orphan*/  TD_OPTIONS ; 
#define  TELOPT_AUTHENTICATION 137 
#define  TELOPT_BINARY 136 
#define  TELOPT_ECHO 135 
#define  TELOPT_LFLOW 134 
#define  TELOPT_NEW_ENVIRON 133 
#define  TELOPT_OLD_ENVIRON 132 
#define  TELOPT_TM 131 
#define  TELOPT_TSPEED 130 
#define  TELOPT_TTYPE 129 
#define  TELOPT_XDISPLOC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* do_dont_resp ; 
 int /*<<< orphan*/  environsubopt ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int not42 ; 
 int /*<<< orphan*/  oenvironsubopt ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* slctab ; 
 int /*<<< orphan*/  tspeedsubopt ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttypesubopt ; 
 int /*<<< orphan*/  xdisplocsubopt ; 

void
FUNC13(int option)
{
    /*
     * Process client input.
	 */

    FUNC0(TD_OPTIONS, FUNC6("td: recv wont", option));

    if (do_dont_resp[option]) {
	do_dont_resp[option]--;
	if (do_dont_resp[option] && FUNC3(option))
	    do_dont_resp[option]--;
    }
    if (do_dont_resp[option] == 0) {
	if (FUNC4(option)) {
	    /* it is always ok to change to negative state */
	    switch (option) {
	    case TELOPT_ECHO:
		not42 = 1; /* doesn't seem to be a 4.2 system */
		break;

	    case TELOPT_BINARY:
		FUNC5();
		FUNC12(0);
		FUNC10();
		break;

	    case TELOPT_TM:
		/*
		 * If we get a WONT TM, and had sent a DO TM,
		 * don't respond with a DONT TM, just leave it
		 * as is.  Short circut the state machine to
		 * achive this.
		 */
		FUNC9(TELOPT_TM);
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

#ifdef AUTHENTICATION
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
		FUNC11(ttypesubopt);
		break;

	    case TELOPT_TSPEED:
		FUNC11(tspeedsubopt);
		break;

	    case TELOPT_XDISPLOC:
		FUNC11(xdisplocsubopt);
		break;

	    case TELOPT_OLD_ENVIRON:
		FUNC11(oenvironsubopt);
		break;

	    case TELOPT_NEW_ENVIRON:
		FUNC11(environsubopt);
		break;

	    default:
		break;
	    }
	    FUNC9(option);
	    if (FUNC2(option))
		FUNC7(option, 0);
	} else {
	    switch (option) {
	    case TELOPT_TM:
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
    FUNC8(option);

}