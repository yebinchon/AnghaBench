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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int*,int*) ; 
 scalar_t__ GettingInput ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int /*<<< orphan*/  pintr_disabled ; 
 scalar_t__ windowchg ; 

void
FUNC9(int force)
{
    int     lins, cols;

    /* don't want to confuse things here */
    pintr_disabled++;
    FUNC7(&pintr_disabled, disabled_cleanup);
    /*
     * From: bret@shark.agps.lanl.gov (Bret Thaeler) Avoid sunview bug, where a
     * partially hidden window gets a SIG_WINDOW every time the text is
     * scrolled
     */
    if (FUNC3(&lins, &cols) || force) {
	if (GettingInput) {
	    FUNC2();
	    FUNC1();
	    FUNC5(0);
	    FUNC4(0);
	    FUNC0(lins, cols);
	    FUNC6();
	}
	else
	    FUNC0(lins, cols);
    }
    windowchg = 0;
    FUNC8(&pintr_disabled);	/* can change it again */
}