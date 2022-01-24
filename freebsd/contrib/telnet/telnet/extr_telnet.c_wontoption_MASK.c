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
#define  TELOPT_ECHO 130 
#define  TELOPT_SGA 129 
#define  TELOPT_TM 128 
 scalar_t__* do_dont_resp ; 
 scalar_t__ flushout ; 
 int /*<<< orphan*/  kludgelinemode ; 
 int /*<<< orphan*/  modenegotiated ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(int option)
{
	if (do_dont_resp[option]) {
	    --do_dont_resp[option];
	    if (do_dont_resp[option] && FUNC1(option))
		--do_dont_resp[option];
	}

	if ((do_dont_resp[option] == 0) && FUNC2(option)) {

	    switch (option) {

#ifdef	KLUDGELINEMODE
	    case TELOPT_SGA:
		if (!kludgelinemode)
		    break;
		/* FALLTHROUGH */
#endif
	    case TELOPT_ECHO:
		FUNC7(modenegotiated);
		break;

	    case TELOPT_TM:
		if (flushout)
		    flushout = 0;
		FUNC5(option);
		FUNC4(option);
		return;		/* Never reply to TM will's/wont's */

	    default:
		break;
	    }
	    FUNC5(option);
	    if (FUNC0(option))
		FUNC3(option, 0);
	    FUNC6(0);			/* Set new tty mode */
	} else if (option == TELOPT_TM) {
	    /*
	     * Special case for TM.
	     */
	    if (flushout)
		flushout = 0;
	    FUNC5(option);
	}
	FUNC4(option);
}