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
#define  TELOPT_BINARY 130 
#define  TELOPT_ECHO 129 
#define  TELOPT_SGA 128 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int turn_on_sga ; 
 scalar_t__* will_wont_resp ; 

void
FUNC13(int option)
{
    /*
     * Process client input.
	 */


    FUNC0(TD_OPTIONS, FUNC5("td: recv dont", option));

    if (will_wont_resp[option]) {
	will_wont_resp[option]--;
	if (will_wont_resp[option] && FUNC3(option))
	    will_wont_resp[option]--;
    }
    if ((will_wont_resp[option] == 0) && (FUNC4(option))) {
	switch (option) {
	case TELOPT_BINARY:
	    FUNC1();
	    FUNC11(0);
	    FUNC10();
	    break;

	case TELOPT_ECHO:	/* we should stop echoing */
	    {
		FUNC1();
		FUNC12(0);
		FUNC10();
	    }
	break;

	case TELOPT_SGA:
	    FUNC9(option);
	    if (FUNC2(option))
		FUNC7(option, 0);
	    FUNC8(option);
	    if (turn_on_sga ^= 1)
		FUNC6(option, 1);
	    return;

	default:
	    break;
	}

	FUNC9(option);
	if (FUNC2(option))
	    FUNC7(option, 0);
    }
    FUNC8(option);

}