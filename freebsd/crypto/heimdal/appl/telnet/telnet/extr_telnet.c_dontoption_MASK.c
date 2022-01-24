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
#define  TELOPT_ENCRYPT 130 
#define  TELOPT_LINEMODE 129 
#define  TELOPT_NEW_ENVIRON 128 
 int /*<<< orphan*/  TELOPT_OLD_ENVIRON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  linemode ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  telopt_environ ; 
 scalar_t__* will_wont_resp ; 

__attribute__((used)) static void
FUNC9(int option)
{

	if (will_wont_resp[option]) {
	    --will_wont_resp[option];
	    if (will_wont_resp[option] && FUNC2(option))
		--will_wont_resp[option];
	}

	if ((will_wont_resp[option] == 0) && FUNC3(option)) {
	    switch (option) {
	    case TELOPT_LINEMODE:
		linemode = 0;	/* put us back to the default state */
		break;
#ifdef	OLD_ENVIRON
	    case TELOPT_NEW_ENVIRON:
		/*
		 * The new environ option wasn't recognized, try
		 * the old one.
		 */
		send_will(TELOPT_OLD_ENVIRON, 1);
		telopt_environ = TELOPT_OLD_ENVIRON;
		break;
#endif
#if 0
#ifdef ENCRYPTION
	    case TELOPT_ENCRYPT:
	      encrypt_not();
	      break;
#endif
#endif
	    }
	    /* we always accept a DONT */
	    FUNC7(option);
	    if (FUNC1(option))
		FUNC5(option, 0);
	    FUNC8(0);			/* Set new tty mode */
	}
	FUNC6(option);
}