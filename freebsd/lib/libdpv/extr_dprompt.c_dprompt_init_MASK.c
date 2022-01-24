#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct dpv_file_node {char* name; struct dpv_file_node* next; } ;
struct TYPE_2__ {int colors; char* backtitle; } ;

/* Variables and functions */
 int DPV_DISPLAY_LIMIT ; 
 char* DPV_DONE_DEFAULT ; 
 char* DPV_FAIL_DEFAULT ; 
 char* DPV_PENDING_DEFAULT ; 
 int /*<<< orphan*/  ENV_MSG_DONE ; 
 int /*<<< orphan*/  ENV_MSG_FAIL ; 
 int /*<<< orphan*/  ENV_MSG_PENDING ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FM_DONE ; 
 int /*<<< orphan*/  FM_FAIL ; 
 int /*<<< orphan*/  FM_PEND ; 
 char* aprompt ; 
 int /*<<< orphan*/ * backtitle ; 
 scalar_t__ debug ; 
 int dheight ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int,int) ; 
 TYPE_1__ dialog_vars ; 
 int display_limit ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* done ; 
 int done_lsize ; 
 int done_rsize ; 
 int done_size ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  dprompt_free_mask ; 
 unsigned int dpv_nfiles ; 
 int dwidth ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 char* fail ; 
 int fail_lsize ; 
 int fail_rsize ; 
 int fail_size ; 
 int fheight ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int label_size ; 
 char* FUNC11 (int) ; 
 char* msg_done ; 
 char* msg_fail ; 
 char* msg_pending ; 
 scalar_t__ no_labels ; 
 int pbar_size ; 
 int pct_lsize ; 
 int pct_rsize ; 
 char* pend ; 
 int pend_lsize ; 
 int pend_rsize ; 
 int pend_size ; 
 char* pprompt ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC13 (char*) ; 
 scalar_t__ use_dialog ; 
 scalar_t__ use_libdialog ; 
 scalar_t__ use_shadow ; 
 scalar_t__ use_xdialog ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 
 scalar_t__ wide ; 

void
FUNC15(struct dpv_file_node *file_list)
{
	uint8_t nls = 0;
	int len;
	int max_cols;
	int max_rows;
	int nthfile;
	int numlines;
	struct dpv_file_node *curfile;

	/*
	 * Initialize dialog(3) `colors' support and draw backtitle
	 */
	if (use_libdialog && !debug) {
		FUNC10(stdin, stdout);
		dialog_vars.colors = 1;
		if (backtitle != NULL) {
			dialog_vars.backtitle = (char *)backtitle;
			FUNC6();
		}
	}

	/* Calculate width of dialog(3) or [X]dialog(1) --gauge box */
	dwidth = label_size + pbar_size + 9;

	/*
	 * Calculate height of dialog(3) or [X]dialog(1) --gauge box
	 */
	dheight = 5;
	max_rows = FUNC1();
	/* adjust max_rows for backtitle and/or dialog(3) statusLine */
	if (backtitle != NULL)
		max_rows -= use_shadow ? 3 : 2;
	if (use_libdialog && use_shadow)
		max_rows -= 2;
	/* add lines for `-p text' */
	numlines = FUNC4(pprompt, 0);
	if (debug)
		FUNC14("`-p text' is %i line%s long", numlines,
		    numlines == 1 ? "" : "s");
	dheight += numlines;
	/* adjust dheight for various implementations */
	if (use_dialog) {
		dheight -= FUNC3(pprompt);
		nls = FUNC3(pprompt);
	} else if (use_xdialog) {
		if (pprompt == NULL || *pprompt == '\0')
			dheight++;
	} else if (use_libdialog) {
		if (pprompt != NULL && *pprompt != '\0')
			dheight--;
	}
	/* limit the number of display items (necessary per dialog(1,3)) */
	if (display_limit == 0 || display_limit > DPV_DISPLAY_LIMIT)
		display_limit = DPV_DISPLAY_LIMIT;
	/* verify fheight will fit (stop if we hit 1) */
	for (; display_limit > 0; display_limit--) {
		nthfile = numlines = 0;
		fheight = (int)dpv_nfiles > display_limit ?
		    (unsigned int)display_limit : dpv_nfiles;
		for (curfile = file_list; curfile != NULL;
		    curfile = curfile->next) {
			nthfile++;
			numlines += FUNC4(curfile->name, nls);
			if ((nthfile % display_limit) == 0) {
				if (numlines > fheight)
					fheight = numlines;
				numlines = nthfile = 0;
			}
		}
		if (numlines > fheight)
			fheight = numlines;
		if ((dheight + fheight +
		    (int)FUNC4(aprompt, use_dialog) -
		    (use_dialog ? (int)FUNC3(aprompt) : 0))
		    <= max_rows)
			break;	
	}
	/* don't show any items if we run the risk of hitting a blank set */
	if ((max_rows - (use_shadow ? 5 : 4)) >= fheight)
		dheight += fheight;
	else
		fheight = 0;
	/* add lines for `-a text' */
	numlines = FUNC4(aprompt, use_dialog);
	if (debug)
		FUNC14("`-a text' is %i line%s long", numlines,
		    numlines == 1 ? "" : "s");
	dheight += numlines;

	/* If using Xdialog(1), adjust accordingly (based on testing) */
	if (use_xdialog)
		dheight += dheight / 4;

	/* For wide mode, long prefix (`pprompt') or append (`aprompt')
	 * strings will bump width */
	if (wide) {
		len = (int)FUNC2(pprompt, 0); /* !nls */
		if ((len + 4) > dwidth)
			dwidth = len + 4;
		len = (int)FUNC2(aprompt, 1); /* nls */
		if ((len + 4) > dwidth)
			dwidth = len + 4;
	}

	/* Enforce width constraints to maximum values */
	max_cols = FUNC0();
	if (max_cols > 0 && dwidth > max_cols)
		dwidth = max_cols;

	/* Optimize widths to sane values*/
	if (pbar_size > dwidth - 9) {
		pbar_size = dwidth - 9;
		label_size = 0;
		/* -9 = "|  - [" ... "] |" */
	}
	if (pbar_size < 0)
		label_size = dwidth - 8;
		/* -8 = "|  " ... " -  |" */
	else if (label_size > (dwidth - pbar_size - 9) || wide)
		label_size = no_labels ? 0 : dwidth - pbar_size - 9;
		/* -9 = "| " ... " - [" ... "] |" */

	/* Hide labels if requested */
	if (no_labels)
		label_size = 0;

	/* Touch up the height (now that we know dwidth) */
	dheight += FUNC5(pprompt, dwidth - 4, 0);
	dheight += FUNC5(aprompt, dwidth - 4, 1);

	if (debug)
		FUNC14("dheight = %i dwidth = %i fheight = %i",
		    dheight, dwidth, fheight);

	/* Calculate left/right portions of % */
	pct_lsize = (pbar_size - 4) / 2; /* -4 == printf("%-3s%%", pct) */
	pct_rsize = pct_lsize;
	/* If not evenly divisible by 2, increment the right-side */
	if ((pct_rsize + pct_rsize + 4) != pbar_size)
		pct_rsize++;

	/* Initialize "Done" text */
	if (done == NULL && (done = msg_done) == NULL) {
		if ((done = FUNC9(ENV_MSG_DONE)) != NULL)
			done_size = FUNC13(done);
		else {
			done_size = FUNC13(DPV_DONE_DEFAULT);
			if ((done = FUNC11(done_size + 1)) == NULL)
				FUNC8(EXIT_FAILURE, "Out of memory?!");
			dprompt_free_mask |= FM_DONE;
			FUNC12(done, done_size + 1, DPV_DONE_DEFAULT);
		}
	}
	if (pbar_size < done_size) {
		done_lsize = done_rsize = 0;
		*(done + pbar_size) = '\0';
		done_size = pbar_size;
	} else {
		/* Calculate left/right portions for mini-progressbar */
		done_lsize = (pbar_size - done_size) / 2;
		done_rsize = done_lsize;
		/* If not evenly divisible by 2, increment the right-side */
		if ((done_rsize + done_size + done_lsize) != pbar_size)
			done_rsize++;
	}

	/* Initialize "Fail" text */
	if (fail == NULL && (fail = msg_fail) == NULL) {
		if ((fail = FUNC9(ENV_MSG_FAIL)) != NULL)
			fail_size = FUNC13(fail);
		else {
			fail_size = FUNC13(DPV_FAIL_DEFAULT);
			if ((fail = FUNC11(fail_size + 1)) == NULL)
				FUNC8(EXIT_FAILURE, "Out of memory?!");
			dprompt_free_mask |= FM_FAIL;
			FUNC12(fail, fail_size + 1, DPV_FAIL_DEFAULT);
		}
	}
	if (pbar_size < fail_size) {
		fail_lsize = fail_rsize = 0;
		*(fail + pbar_size) = '\0';
		fail_size = pbar_size;
	} else {
		/* Calculate left/right portions for mini-progressbar */
		fail_lsize = (pbar_size - fail_size) / 2;
		fail_rsize = fail_lsize;
		/* If not evenly divisible by 2, increment the right-side */
		if ((fail_rsize + fail_size + fail_lsize) != pbar_size)
			fail_rsize++;
	}

	/* Initialize "Pending" text */
	if (pend == NULL && (pend = msg_pending) == NULL) {
		if ((pend = FUNC9(ENV_MSG_PENDING)) != NULL)
			pend_size = FUNC13(pend);
		else {
			pend_size = FUNC13(DPV_PENDING_DEFAULT);
			if ((pend = FUNC11(pend_size + 1)) == NULL)
				FUNC8(EXIT_FAILURE, "Out of memory?!");
			dprompt_free_mask |= FM_PEND;
			FUNC12(pend, pend_size + 1, DPV_PENDING_DEFAULT);
		}
	}
	if (pbar_size < pend_size) {
		pend_lsize = pend_rsize = 0;
		*(pend + pbar_size) = '\0';
		pend_size = pbar_size;
	} else {
		/* Calculate left/right portions for mini-progressbar */
		pend_lsize = (pbar_size - pend_size) / 2;
		pend_rsize = pend_lsize;
		/* If not evenly divisible by 2, increment the right-side */
		if ((pend_rsize + pend_lsize + pend_size) != pbar_size)
			pend_rsize++;
	}

	if (debug)
		FUNC14("label_size = %i pbar_size = %i", label_size, pbar_size);

	FUNC7();
}