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
 int /*<<< orphan*/  FSHTTY ; 
 int /*<<< orphan*/  STR1 ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ child ; 
 scalar_t__ didfds ; 
 scalar_t__ exiterr ; 
 int /*<<< orphan*/  exitset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ tpgrp ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(void)
{
    didfds = 0;			/* Forget about 0,1,2 */
    /*
     * Go away if -e or we are a child shell
     */
    if (!exitset || exiterr || child)
	FUNC3(1);

    /*
     * Reset the state of the input. This buffered seek to end of file will
     * also clear the while/foreach stack.
     */
    FUNC0();

    FUNC1(STRstatus, STR1, VAR_READWRITE);/*FIXRESET*/
#ifdef BSDJOBS
    if (tpgrp > 0)
	(void) tcsetpgrp(FSHTTY, tpgrp);
#endif
}