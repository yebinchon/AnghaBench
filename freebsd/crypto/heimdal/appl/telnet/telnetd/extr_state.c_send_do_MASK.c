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
 int TELOPT_TM ; 
 scalar_t__* do_dont_resp ; 
 scalar_t__ doopt ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void
FUNC7(int option, int init)
{
    if (init) {
	if ((do_dont_resp[option] == 0 && FUNC1(option)) ||
	    FUNC2(option))
	    return;
	/*
	 * Special case for TELOPT_TM:  We send a DO, but pretend
	 * that we sent a DONT, so that we can send more DOs if
	 * we want to.
	 */
	if (option == TELOPT_TM)
	    FUNC6(option);
	else
	    FUNC5(option);
	do_dont_resp[option]++;
    }
    FUNC3((const char *)doopt, option);

    FUNC0(TD_OPTIONS, FUNC4("td: send do", option));
}