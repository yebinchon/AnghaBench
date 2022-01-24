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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int EOF ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_SECURE ; 
 int /*<<< orphan*/  O_SHELL ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC16 (int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,long,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC18 (char*,char) ; 
 scalar_t__ FUNC19 () ; 

__attribute__((used)) static int
FUNC20(SCR *sp, CHAR_T **bpp, size_t *blenp, size_t *lenp)
{
	enum { SEXP_ERR, SEXP_EXPANSION_ERR, SEXP_OK } rval;
	FILE *ifp;
	pid_t pid;
	size_t blen, len;
	int ch, std_output[2];
	CHAR_T *bp, *p;
	char *sh, *sh_path;
	char *np;
	size_t nlen;

	/* Secure means no shell access. */
	if (FUNC3(sp, O_SECURE)) {
		FUNC14(sp, M_ERR,
"289|Shell expansions not supported when the secure edit option is set");
		return (1);
	}

	sh_path = FUNC4(sp, O_SHELL);
	if ((sh = FUNC18(sh_path, '/')) == NULL)
		sh = sh_path;
	else
		++sh;

	/* Local copies of the buffer variables. */
	bp = *bpp;
	blen = *blenp;

	/*
	 * There are two different processes running through this code, named
	 * the utility (the shell) and the parent. The utility reads standard
	 * input and writes standard output and standard error output.  The
	 * parent writes to the utility, reads its standard output and ignores
	 * its standard error output.  Historically, the standard error output
	 * was discarded by vi, as it produces a lot of noise when file patterns
	 * don't match.
	 *
	 * The parent reads std_output[0], and the utility writes std_output[1].
	 */
	ifp = NULL;
	std_output[0] = std_output[1] = -1;
	if (FUNC16(std_output) < 0) {
		FUNC14(sp, M_SYSERR, "pipe");
		return (1);
	}
	if ((ifp = FUNC12(std_output[0], "r")) == NULL) {
		FUNC14(sp, M_SYSERR, "fdopen");
		goto err;
	}

	/*
	 * Do the minimal amount of work possible, the shell is going to run
	 * briefly and then exit.  We sincerely hope.
	 */
	switch (pid = FUNC19()) {
	case -1:			/* Error. */
		FUNC14(sp, M_SYSERR, "vfork");
err:		if (ifp != NULL)
			(void)FUNC11(ifp);
		else if (std_output[0] != -1)
			FUNC7(std_output[0]);
		if (std_output[1] != -1)
			FUNC7(std_output[0]);
		return (1);
	case 0:				/* Utility. */
		/* Redirect stdout to the write end of the pipe. */
		(void)FUNC9(std_output[1], STDOUT_FILENO);

		/* Close the utility's file descriptors. */
		(void)FUNC7(std_output[0]);
		(void)FUNC7(std_output[1]);
		(void)FUNC7(STDERR_FILENO);

		/*
		 * XXX
		 * Assume that all shells have -c.
		 */
		FUNC2(sp, bp, FUNC5(bp)+1, np, nlen);
		FUNC10(sh_path, sh, "-c", np, (char *)NULL);
		FUNC15(sp, M_SYSERR, sh_path, "118|Error: execl: %s");
		FUNC6(127);
	default:			/* Parent. */
		/* Close the pipe ends the parent won't use. */
		(void)FUNC7(std_output[1]);
		break;
	}

	/*
	 * Copy process standard output into a buffer.
	 *
	 * !!!
	 * Historic vi apparently discarded leading \n and \r's from
	 * the shell output stream.  We don't on the grounds that any
	 * shell that does that is broken.
	 */
	for (p = bp, len = 0, ch = EOF;
	    (ch = FUNC1(ifp)) != EOF; *p++ = ch, blen-=sizeof(CHAR_T), ++len)
		if (blen < 5) {
			FUNC0(sp, bp, *blenp, *blenp * 2);
			p = bp + len;
			blen = *blenp - len;
		}

	/* Delete the final newline, nul terminate the string. */
	if (p > bp && (p[-1] == '\n' || p[-1] == '\r')) {
		--p;
		--len;
	}
	*p = '\0';
	*lenp = len;
	*bpp = bp;		/* *blenp is already updated. */

	if (FUNC13(ifp))
		goto ioerr;
	if (FUNC11(ifp)) {
ioerr:		FUNC15(sp, M_ERR, sh, "119|I/O error: %s");
alloc_err:	rval = SEXP_ERR;
	} else
		rval = SEXP_OK;

	/*
	 * Wait for the process.  If the shell process fails (e.g., "echo $q"
	 * where q wasn't a defined variable) or if the returned string has
	 * no characters or only blank characters, (e.g., "echo $5"), complain
	 * that the shell expansion failed.  We can't know for certain that's
	 * the error, but it's a good guess, and it matches historic practice.
	 * This won't catch "echo foo_$5", but that's not a common error and
	 * historic vi didn't catch it either.
	 */
	if (FUNC17(sp, (long)pid, sh, 1, 0))
		rval = SEXP_EXPANSION_ERR;

	for (p = bp; len; ++p, --len)
		if (!FUNC8(*p))
			break;
	if (len == 0)
		rval = SEXP_EXPANSION_ERR;

	if (rval == SEXP_EXPANSION_ERR)
		FUNC14(sp, M_ERR, "304|Shell expansion failed");

	return (rval == SEXP_OK ? 0 : 1);
}