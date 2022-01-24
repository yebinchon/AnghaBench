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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ERR_INTR ; 
 int ERR_NAME ; 
 int ERR_SILENT ; 
 scalar_t__ GettingInput ; 
 scalar_t__ InsideCompletion ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int doneinp ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ editing ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ evalvec ; 
 scalar_t__ gointr ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  jobargv ; 
 scalar_t__ pjobs ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 

void
FUNC12(int wantnl)
{
    if (setintr) {
	if (pjobs) {
	    pjobs = 0;
	    FUNC11('\n');
	    FUNC4(jobargv, NULL);
	    FUNC10(ERR_NAME | ERR_INTR);
	}
    }
    /* MH - handle interrupted completions specially */
    {
	if (InsideCompletion)
	    FUNC10(ERR_SILENT);
    }
    /* JV - Make sure we shut off inputl */
    {
	(void) FUNC2();
	GettingInput = 0;
	if (evalvec)
	    doneinp = 1;
    }
    FUNC5();
#ifdef HAVE_GETPWENT
    (void) endpwent();
#endif

    /*
     * If we have an active "onintr" then we search for the label. Note that if
     * one does "onintr -" then we shan't be interruptible so we needn't worry
     * about that here.
     */
    if (gointr) {
	FUNC7(gointr);
	FUNC9();
    }
    else if (intty && wantnl) {
	if (editing) {
	    /* 
	     * If we are editing a multi-line input command, and move to
	     * the beginning of the line, we don't want to trash it when
	     * we hit ^C
	     */
	    FUNC3();
	    FUNC1();
	    FUNC0();
	}
	else {
	    /* xputchar('\n'); *//* Some like this, others don't */
	    (void) FUNC8('\r');
	    (void) FUNC8('\n');
	}
    }
    FUNC10(ERR_SILENT);
}