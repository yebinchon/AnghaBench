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
typedef  int /*<<< orphan*/  HistEvent ;

/* Variables and functions */
 int /*<<< orphan*/  EL_ADDFN ; 
 int /*<<< orphan*/  EL_BIND ; 
 int /*<<< orphan*/  EL_EDITMODE ; 
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_RPROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int /*<<< orphan*/  complete ; 
 scalar_t__ editing ; 
 int /*<<< orphan*/ * el ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * hist ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int prompt ; 
 int rprompt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC9(void)
{
	if (editing && el == NULL && hist == NULL) {
		HistEvent ev;
		int editmode;

		el = FUNC2(FUNC5(), stdin, ttyout, stderr);
		/* init editline */
		hist = FUNC8();		/* init the builtin history */
		FUNC6(hist, &ev, H_SETSIZE, 100);/* remember 100 events */
		FUNC3(el, EL_HIST, history, hist);	/* use history */

		FUNC3(el, EL_EDITOR, "emacs");	/* default editor is emacs */
		FUNC3(el, EL_PROMPT, prompt);	/* set the prompt functions */
		FUNC3(el, EL_RPROMPT, rprompt);

		/* add local file completion, bind to TAB */
		FUNC3(el, EL_ADDFN, "ftp-complete",
		    "Context sensitive argument completion",
		    complete);
		FUNC3(el, EL_BIND, "^I", "ftp-complete", NULL);
		FUNC4(el, NULL);	/* read ~/.editrc */
		if ((FUNC1(el, EL_EDITMODE, &editmode) != -1) && editmode == 0)
			editing = 0;	/* the user doesn't want editing,
					 * so disable, and let statement
					 * below cleanup */
		else
			FUNC3(el, EL_SIGNAL, 1);
	}
	if (!editing) {
		if (hist) {
			FUNC7(hist);
			hist = NULL;
		}
		if (el) {
			FUNC0(el);
			el = NULL;
		}
	}
}