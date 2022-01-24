#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ recno_t ;
typedef  scalar_t__ pid_t ;
typedef  enum filtertype { ____Placeholder_filtertype } filtertype ;
struct TYPE_28__ {scalar_t__ lno; } ;
struct TYPE_27__ {int /*<<< orphan*/  ep; int /*<<< orphan*/ * rptlines; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  CUT_LINEMODE ; 
 int FILTER_BANG ; 
 int FILTER_RBANG ; 
 int FILTER_READ ; 
 int FILTER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MULTILOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,char*,size_t) ; 
 size_t L_ADDED ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_SHELL ; 
 char* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_VI ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__*,int) ; 
 int FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int*) ; 
 scalar_t__ FUNC23 (TYPE_1__*,long,char*,int,int) ; 
 char* FUNC24 (char*,char) ; 
 scalar_t__ FUNC25 () ; 

int
FUNC26(SCR *sp, EXCMD *cmdp, MARK *fm, MARK *tm, MARK *rp, CHAR_T *cmd, enum filtertype ftype)
{
	FILE *ifp, *ofp;
	pid_t parent_writer_pid, utility_pid;
	recno_t nread;
	int input[2], output[2], rval;
	char *name;
	char *np;
	size_t nlen;

	rval = 0;

	/* Set return cursor position, which is never less than line 1. */
	*rp = *fm;
	if (rp->lno == 0)
		rp->lno = 1;

	/* We're going to need a shell. */
	if (FUNC21(sp, O_SHELL, 0))
		return (1);

	/*
	 * There are three different processes running through this code.
	 * They are the utility, the parent-writer and the parent-reader.
	 * The parent-writer is the process that writes from the file to
	 * the utility, the parent reader is the process that reads from
	 * the utility.
	 *
	 * Input and output are named from the utility's point of view.
	 * The utility reads from input[0] and the parent(s) write to
	 * input[1].  The parent(s) read from output[0] and the utility
	 * writes to output[1].
	 *
	 * !!!
	 * Historically, in the FILTER_READ case, the utility reads from
	 * the terminal (e.g. :r! cat works).  Otherwise open up utility
	 * input pipe.
	 */
	ofp = NULL;
	input[0] = input[1] = output[0] = output[1] = -1;
	if (ftype != FILTER_READ && FUNC22(input) < 0) {
		FUNC19(sp, M_SYSERR, "pipe");
		goto err;
	}

	/* Open up utility output pipe. */
	if (FUNC22(output) < 0) {
		FUNC19(sp, M_SYSERR, "pipe");
		goto err;
	}
	if ((ofp = FUNC16(output[0], "r")) == NULL) {
		FUNC19(sp, M_SYSERR, "fdopen");
		goto err;
	}

	/* Fork off the utility process. */
	switch (utility_pid = FUNC25()) {
	case -1:			/* Error. */
		FUNC19(sp, M_SYSERR, "vfork");
err:		if (input[0] != -1)
			(void)FUNC7(input[0]);
		if (input[1] != -1)
			(void)FUNC7(input[1]);
		if (ofp != NULL)
			(void)FUNC15(ofp);
		else if (output[0] != -1)
			(void)FUNC7(output[0]);
		if (output[1] != -1)
			(void)FUNC7(output[1]);
		return (1);
	case 0:				/* Utility. */
		/*
		 * Redirect stdin from the read end of the input pipe, and
		 * redirect stdout/stderr to the write end of the output pipe.
		 *
		 * !!!
		 * Historically, ex only directed stdout into the input pipe,
		 * letting stderr come out on the terminal as usual.  Vi did
		 * not, directing both stdout and stderr into the input pipe.
		 * We match that practice in both ex and vi for consistency.
		 */
		if (input[0] != -1)
			(void)FUNC11(input[0], STDIN_FILENO);
		(void)FUNC11(output[1], STDOUT_FILENO);
		(void)FUNC11(output[1], STDERR_FILENO);

		/* Close the utility's file descriptors. */
		if (input[0] != -1)
			(void)FUNC7(input[0]);
		if (input[1] != -1)
			(void)FUNC7(input[1]);
		(void)FUNC7(output[0]);
		(void)FUNC7(output[1]);

		if ((name = FUNC24(FUNC4(sp, O_SHELL), '/')) == NULL)
			name = FUNC4(sp, O_SHELL);
		else
			++name;

		FUNC3(sp, cmd, FUNC5(cmd)+1, np, nlen);
		FUNC14(FUNC4(sp, O_SHELL), name, "-c", np, (char *)NULL);
		FUNC20(sp, M_SYSERR, FUNC4(sp, O_SHELL), "execl: %s");
		FUNC6 (127);
		/* NOTREACHED */
	default:			/* Parent-reader, parent-writer. */
		/* Close the pipe ends neither parent will use. */
		if (input[0] != -1)
			(void)FUNC7(input[0]);
		(void)FUNC7(output[1]);
		break;
	}

	/*
	 * FILTER_RBANG, FILTER_READ:
	 *
	 * Reading is the simple case -- we don't need a parent writer,
	 * so the parent reads the output from the read end of the output
	 * pipe until it finishes, then waits for the child.  Ex_readfp
	 * appends to the MARK, and closes ofp.
	 *
	 * For FILTER_RBANG, there is nothing to write to the utility.
	 * Make sure it doesn't wait forever by closing its standard
	 * input.
	 *
	 * !!!
	 * Set the return cursor to the last line read in for FILTER_READ.
	 * Historically, this behaves differently from ":r file" command,
	 * which leaves the cursor at the first line read in.  Check to
	 * make sure that it's not past EOF because we were reading into an
	 * empty file.
	 */
	if (ftype == FILTER_RBANG || ftype == FILTER_READ) {
		if (ftype == FILTER_RBANG)
			(void)FUNC7(input[1]);

		if (FUNC12(sp, "filter", ofp, fm, &nread, 1))
			rval = 1;
		sp->rptlines[L_ADDED] += nread;
		if (ftype == FILTER_READ)
			if (fm->lno == 0)
				rp->lno = nread;
			else
				rp->lno += nread;
		goto uwait;
	}

	/*
	 * FILTER_BANG, FILTER_WRITE
	 *
	 * Here we need both a reader and a writer.  Temporary files are
	 * expensive and we'd like to avoid disk I/O.  Using pipes has the
	 * obvious starvation conditions.  It's done as follows:
	 *
	 *	fork
	 *	child
	 *		write lines out
	 *		exit
	 *	parent
	 *		FILTER_BANG:
	 *			read lines into the file
	 *			delete old lines
	 *		FILTER_WRITE
	 *			read and display lines
	 *		wait for child
	 *
	 * XXX
	 * We get away without locking the underlying database because we know
	 * that none of the records that we're reading will be modified until
	 * after we've read them.  This depends on the fact that the current
	 * B+tree implementation doesn't balance pages or similar things when
	 * it inserts new records.  When the DB code has locking, we should
	 * treat vi as if it were multiple applications sharing a database, and
	 * do the required locking.  If necessary a work-around would be to do
	 * explicit locking in the line.c:db_get() code, based on the flag set
	 * here.
	 */
	FUNC2(sp->ep, F_MULTILOCK);
	switch (parent_writer_pid = FUNC18()) {
	case -1:			/* Error. */
		FUNC19(sp, M_SYSERR, "fork");
		(void)FUNC7(input[1]);
		(void)FUNC7(output[0]);
		rval = 1;
		break;
	case 0:				/* Parent-writer. */
		/*
		 * Write the selected lines to the write end of the input
		 * pipe.  This instance of ifp is closed by ex_writefp.
		 */
		(void)FUNC7(output[0]);
		if ((ifp = FUNC16(input[1], "w")) == NULL)
			FUNC6 (1);
		FUNC6(FUNC13(sp, "filter", ifp, fm, tm, NULL, NULL, 1));

		/* NOTREACHED */
	default:			/* Parent-reader. */
		(void)FUNC7(input[1]);
		if (ftype == FILTER_WRITE) {
			/*
			 * Read the output from the read end of the output
			 * pipe and display it.  Filter_ldisplay closes ofp.
			 */
			if (FUNC17(sp, ofp))
				rval = 1;
		} else {
			/*
			 * Read the output from the read end of the output
			 * pipe.  Ex_readfp appends to the MARK and closes
			 * ofp.
			 */
			if (FUNC12(sp, "filter", ofp, tm, &nread, 1))
				rval = 1;
			sp->rptlines[L_ADDED] += nread;
		}

		/* Wait for the parent-writer. */
		if (FUNC23(sp,
		    (long)parent_writer_pid, "parent-writer", 0, 1))
			rval = 1;

		/* Delete any lines written to the utility. */
		if (rval == 0 && ftype == FILTER_BANG &&
		    (FUNC8(sp, NULL, fm, tm, CUT_LINEMODE) ||
		    FUNC10(sp, fm, tm, 1))) {
			rval = 1;
			break;
		}

		/*
		 * If the filter had no output, we may have just deleted
		 * the cursor.  Don't do any real error correction, we'll
		 * try and recover later.
		 */
		 if (rp->lno > 1 && !FUNC9(sp, rp->lno))
			--rp->lno;
		break;
	}
	FUNC0(sp->ep, F_MULTILOCK);

	/*
	 * !!!
	 * Ignore errors on vi file reads, to make reads prettier.  It's
	 * completely inconsistent, and historic practice.
	 */
uwait:	FUNC3(sp, cmd, FUNC5(cmd) + 1, np, nlen);
	return (FUNC23(sp, (long)utility_pid, np,
	    ftype == FILTER_READ && FUNC1(sp, SC_VI) ? 1 : 0, 0) || rval);
}