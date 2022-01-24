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
#define  TELOPT_ECHO 131 
#define  TELOPT_ENCRYPT 130 
#define  TELOPT_SGA 129 
#define  TELOPT_TM 128 
 scalar_t__* do_dont_resp ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flushout ; 
 int /*<<< orphan*/  kludgelinemode ; 
 int /*<<< orphan*/  modenegotiated ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(int option)
{
	if (do_dont_resp[option]) {
	    --do_dont_resp[option];
	    if (do_dont_resp[option] && FUNC2(option))
		--do_dont_resp[option];
	}

	if ((do_dont_resp[option] == 0) && FUNC3(option)) {

	    switch (option) {

#ifdef	KLUDGELINEMODE
	    case TELOPT_SGA:
		if (!kludgelinemode)
		    break;
		/* FALL THROUGH */
#endif
	    case TELOPT_ECHO:
		FUNC8(modenegotiated);
		break;

	    case TELOPT_TM:
		if (flushout)
		    flushout = 0;
		FUNC6(option);
		FUNC5(option);
		return;		/* Never reply to TM will's/wont's */

#ifdef ENCRYPTION
  	    case TELOPT_ENCRYPT:
	      encrypt_not();
	      break;
#endif
	    default:
		break;
	    }
	    FUNC6(option);
	    if (FUNC1(option))
		FUNC4(option, 0);
	    FUNC7(0);			/* Set new tty mode */
	} else if (option == TELOPT_TM) {
	    /*
	     * Special case for TM.
	     */
	    if (flushout)
		flushout = 0;
	    FUNC6(option);
	}
	FUNC5(option);
}