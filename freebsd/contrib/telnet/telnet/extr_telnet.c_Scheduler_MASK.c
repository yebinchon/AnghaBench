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
 int /*<<< orphan*/  ISend ; 
 int /*<<< orphan*/  SYNCHing ; 
 int /*<<< orphan*/  TELOPT_BINARY ; 
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 int /*<<< orphan*/  TELOPT_SGA ; 
 scalar_t__ clienteof ; 
 scalar_t__ flushline ; 
 int /*<<< orphan*/  kludgelinemode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netiring ; 
 int /*<<< orphan*/  netoring ; 
 int FUNC3 (int,int,int,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  ttyiring ; 
 int /*<<< orphan*/  ttyoring ; 

__attribute__((used)) static int
FUNC8(int block)
{
		/* One wants to be a bit careful about setting returnValue
		 * to one, since a one implies we did some useful work,
		 * and therefore probably won't be called to block next
		 */
    int returnValue;
    int netin, netout, netex, ttyin, ttyout;

    /* Decide which rings should be processed */

    netout = FUNC5(&netoring) &&
	    (flushline ||
		(FUNC2(TELOPT_LINEMODE)
#ifdef	KLUDGELINEMODE
			&& (!kludgelinemode || my_want_state_is_do(TELOPT_SGA))
#endif
		) ||
			FUNC1(TELOPT_BINARY));
    ttyout = FUNC5(&ttyoring);

    ttyin = FUNC4(&ttyiring) && (clienteof == 0);

    netin = !ISend && FUNC4(&netiring);

    netex = !SYNCHing;

    /* Call to system code to process rings */

    returnValue = FUNC3(netin, netout, netex, ttyin, ttyout, !block);

    /* Now, look at the input rings, looking for work to do. */

    if (FUNC5(&ttyiring)) {
	    returnValue |= FUNC7();
    }

    if (FUNC5(&netiring)) {
	returnValue |= FUNC6();
    }
    return returnValue;
}