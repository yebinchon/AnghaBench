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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  turn_on_sga ; 
 scalar_t__* will_wont_resp ; 

void
FUNC16(int option)
{
    int changeok = 0;

    /*
     * Process client input.
     */

    FUNC0(TD_OPTIONS, FUNC6("td: recv do", option));

    if (will_wont_resp[option]) {
	will_wont_resp[option]--;
	if (will_wont_resp[option] && FUNC3(option))
	    will_wont_resp[option]--;
    }
    if ((will_wont_resp[option] == 0) && (FUNC4(option))) {
	switch (option) {
	case TELOPT_ECHO:
	    {
		FUNC2();
		FUNC15(1);
		FUNC13();
	    }
	changeok++;
	break;

	case TELOPT_BINARY:
	    FUNC2();
	    FUNC14(1);
	    FUNC13();
	    changeok++;
	    break;

	case TELOPT_SGA:
	    turn_on_sga = 0;
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
	    FUNC7(option, 0);
	    FUNC12(option);
	    FUNC10(option);
	    return;

	case TELOPT_LOGOUT:
	    /*
	     * When we get a LOGOUT option, respond
	     * with a WILL LOGOUT, make sure that
	     * it gets written out to the network,
	     * and then just go away...
	     */
	    FUNC11(TELOPT_LOGOUT);
	    FUNC7(TELOPT_LOGOUT, 0);
	    FUNC9(TELOPT_LOGOUT);
	    FUNC5();
	    FUNC1(0);
	    /* NOT REACHED */
	    break;

#ifdef ENCRYPTION
	case TELOPT_ENCRYPT:
	    changeok++;
	    break;
#endif
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
	    FUNC11(option);
	    FUNC7(option, 0);
	} else {
	    will_wont_resp[option]++;
	    FUNC8(option, 0);
	}
    }
    FUNC9(option);

}