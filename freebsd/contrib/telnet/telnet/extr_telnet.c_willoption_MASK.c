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
#define  TELOPT_AUTHENTICATION 135 
#define  TELOPT_BINARY 134 
#define  TELOPT_ECHO 133 
#define  TELOPT_ENCRYPT 132 
#define  TELOPT_LINEMODE 131 
#define  TELOPT_SGA 130 
#define  TELOPT_STATUS 129 
#define  TELOPT_TM 128 
 scalar_t__* do_dont_resp ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  flushout ; 
 int /*<<< orphan*/  modenegotiated ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(int option)
{
	int new_state_ok = 0;

	if (do_dont_resp[option]) {
	    --do_dont_resp[option];
	    if (do_dont_resp[option] && FUNC1(option))
		--do_dont_resp[option];
	}

	if ((do_dont_resp[option] == 0) && FUNC2(option)) {

	    switch (option) {

	    case TELOPT_ECHO:
	    case TELOPT_BINARY:
	    case TELOPT_SGA:
		FUNC10(modenegotiated);
		/* FALLTHROUGH */
	    case TELOPT_STATUS:
#ifdef	AUTHENTICATION
	    case TELOPT_AUTHENTICATION:
#endif
#ifdef	ENCRYPTION
	    case TELOPT_ENCRYPT:
#endif /* ENCRYPTION */
		new_state_ok = 1;
		break;

	    case TELOPT_TM:
		if (flushout)
		    flushout = 0;
		/*
		 * Special case for TM.  If we get back a WILL,
		 * pretend we got back a WONT.
		 */
		FUNC8(option);
		FUNC6(option);
		return;			/* Never reply to TM will's/wont's */

	    case TELOPT_LINEMODE:
	    default:
		break;
	    }

	    if (new_state_ok) {
		FUNC7(option);
		FUNC3(option, 0);
		FUNC9(0);		/* possibly set new tty mode */
	    } else {
		do_dont_resp[option]++;
		FUNC4(option, 0);
	    }
	}
	FUNC5(option);
#ifdef	ENCRYPTION
	if (option == TELOPT_ENCRYPT)
		encrypt_send_support();
#endif	/* ENCRYPTION */
}