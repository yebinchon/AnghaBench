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
#define  TELOPT_AUTHENTICATION 141 
#define  TELOPT_BINARY 140 
#define  TELOPT_ECHO 139 
#define  TELOPT_ENCRYPT 138 
#define  TELOPT_LFLOW 137 
#define  TELOPT_LINEMODE 136 
#define  TELOPT_NAWS 135 
#define  TELOPT_NEW_ENVIRON 134 
#define  TELOPT_OLD_ENVIRON 133 
#define  TELOPT_SGA 132 
#define  TELOPT_TM 131 
#define  TELOPT_TSPEED 130 
#define  TELOPT_TTYPE 129 
#define  TELOPT_XDISPLOC 128 
 int /*<<< orphan*/  autologin ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  kludgelinemode ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int telopt_environ ; 
 scalar_t__* will_wont_resp ; 

__attribute__((used)) static void
FUNC12(int option)
{
	int new_state_ok = 0;

	if (will_wont_resp[option]) {
	    --will_wont_resp[option];
	    if (will_wont_resp[option] && FUNC1(option))
		--will_wont_resp[option];
	}

	if (will_wont_resp[option] == 0) {
	  if (FUNC2(option)) {

	    switch (option) {

	    case TELOPT_TM:
		/*
		 * Special case for TM.  We send a WILL, but pretend
		 * we sent WONT.
		 */
		FUNC4(option, 0);
		FUNC9(TELOPT_TM);
		FUNC7(TELOPT_TM);
		return;

	    case TELOPT_BINARY:		/* binary mode */
	    case TELOPT_NAWS:		/* window size */
	    case TELOPT_TSPEED:		/* terminal speed */
	    case TELOPT_LFLOW:		/* local flow control */
	    case TELOPT_TTYPE:		/* terminal type option */
	    case TELOPT_SGA:		/* no big deal */
#if	defined(ENCRYPTION)
	    case TELOPT_ENCRYPT:	/* encryption variable option */
#endif
		new_state_ok = 1;
		break;

	    case TELOPT_NEW_ENVIRON:	/* New environment variable option */
#ifdef	OLD_ENVIRON
		if (my_state_is_will(TELOPT_OLD_ENVIRON))
			send_wont(TELOPT_OLD_ENVIRON, 1); /* turn off the old */
		goto env_common;
	    case TELOPT_OLD_ENVIRON:	/* Old environment variable option */
		if (my_state_is_will(TELOPT_NEW_ENVIRON))
			break;		/* Don't enable if new one is in use! */
	    env_common:
		telopt_environ = option;
#endif
		new_state_ok = 1;
		break;

#if	defined(AUTHENTICATION)
	    case TELOPT_AUTHENTICATION:
		if (autologin)
			new_state_ok = 1;
		break;
#endif

	    case TELOPT_XDISPLOC:	/* X Display location */
		if (FUNC0((unsigned char *)"DISPLAY"))
		    new_state_ok = 1;
		break;

	    case TELOPT_LINEMODE:
#ifdef	KLUDGELINEMODE
		kludgelinemode = 0;
		send_do(TELOPT_SGA, 1);
#endif
		FUNC8(TELOPT_LINEMODE);
		FUNC4(option, 0);
		FUNC6(TELOPT_LINEMODE);
		FUNC11();
		return;

	    case TELOPT_ECHO:		/* We're never going to echo... */
	    default:
		break;
	    }

	    if (new_state_ok) {
		FUNC8(option);
		FUNC4(option, 0);
		FUNC10(0);			/* Set new tty mode */
	    } else {
		will_wont_resp[option]++;
		FUNC5(option, 0);
	    }
	  } else {
	    /*
	     * Handle options that need more things done after the
	     * other side has acknowledged the option.
	     */
	    switch (option) {
	    case TELOPT_LINEMODE:
#ifdef	KLUDGELINEMODE
		kludgelinemode = 0;
		send_do(TELOPT_SGA, 1);
#endif
		FUNC6(option);
		FUNC11();
		FUNC3(TELOPT_SGA, 0);
		return;
	    }
	  }
	}
	FUNC6(option);
}