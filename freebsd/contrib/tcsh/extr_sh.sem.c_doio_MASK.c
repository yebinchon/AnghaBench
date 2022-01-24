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
struct command {unsigned long t_dflg; scalar_t__ t_drit; scalar_t__ t_dlef; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_SYSTEM ; 
 unsigned long F_APPEND ; 
 int /*<<< orphan*/  F_GETFL ; 
 unsigned long F_NOINTERRUPT ; 
 unsigned long F_OVERWRITE ; 
 unsigned long F_PIPEIN ; 
 unsigned long F_PIPEOUT ; 
 unsigned long F_READ ; 
 unsigned long F_REPEAT ; 
 int /*<<< orphan*/  F_SETFL ; 
 unsigned long F_STDERR ; 
 int /*<<< orphan*/  L_XTND ; 
 int OLDSTD ; 
 int O_APPEND ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int SHDIAG ; 
 int SHIN ; 
 int SHOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int didfds ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC8 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ is1atty ; 
 scalar_t__ is2atty ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ isdiagatty ; 
 scalar_t__ isoutatty ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ no_clobber ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct command*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int tpgrp ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char*,int) ; 

__attribute__((used)) static void
FUNC20(struct command *t, int *pipein, int *pipeout)
{
    int fd;
    Char *cp;
    unsigned long flags = t->t_dflg;

    if (didfds || (flags & F_REPEAT))
	return;
    if ((flags & F_READ) == 0) {/* F_READ already done */
	if (t->t_dlef) {
	    char *tmp;

	    /*
	     * so < /dev/std{in,out,err} work
	     */
	    (void) FUNC5(SHIN, 0);
	    (void) FUNC5(SHOUT, 1);
	    (void) FUNC5(SHDIAG, 2);
	    cp = FUNC12(t, t->t_dlef);
	    tmp = FUNC15(FUNC11(cp));
	    FUNC18(cp);
	    FUNC2(tmp, xfree);
	    if ((fd = FUNC19(tmp, O_RDONLY|O_LARGEFILE)) < 0)
		FUNC13(ERR_SYSTEM, tmp, FUNC14(errno));
	    FUNC3(tmp);
	    /* allow input files larger than 2Gb  */
#ifndef WINNT_NATIVE
	    (void) FUNC8(fd, F_SETFL, FUNC8(fd, F_GETFL) | O_LARGEFILE);
#endif /*!WINNT_NATIVE*/
	    (void) FUNC6(fd, 0);
	}
	else if (flags & F_PIPEIN) {
	    FUNC16(0);
	    FUNC0(FUNC7(pipein[0]));
	    FUNC16(pipein[0]);
	    FUNC16(pipein[1]);
	}
	else if ((flags & F_NOINTERRUPT) && tpgrp == -1) {
	    FUNC16(0);
	    (void) FUNC19(_PATH_DEVNULL, O_RDONLY|O_LARGEFILE);
	}
	else {
	    FUNC16(0);
	    FUNC0(FUNC7(OLDSTD));
#if defined(CLOSE_ON_EXEC) && defined(CLEX_DUPS)
	    /*
	     * PWP: Unlike Bezerkeley 4.3, FIONCLEX for Pyramid is preserved
	     * across dup()s, so we have to UNSET it here or else we get a
	     * command with NO stdin, stdout, or stderr at all (a bad thing
	     * indeed)
	     */
	    (void) close_on_exec(0, 0);
#endif /* CLOSE_ON_EXEC && CLEX_DUPS */
	}
    }
    if (t->t_drit) {
	char *tmp;

	cp = FUNC12(t, t->t_drit);
	tmp = FUNC15(FUNC11(cp));
	FUNC18(cp);
	FUNC2(tmp, xfree);
	/*
	 * so > /dev/std{out,err} work
	 */
	(void) FUNC5(SHOUT, 1);
	(void) FUNC5(SHDIAG, 2);
	if ((flags & F_APPEND) != 0) {
#ifdef O_APPEND
	    fd = xopen(tmp, O_WRONLY|O_APPEND|O_LARGEFILE);
#else /* !O_APPEND */
	    fd = FUNC19(tmp, O_WRONLY|O_LARGEFILE);
	    (void) FUNC10(fd, (off_t) 0, L_XTND);
#endif /* O_APPEND */
	}
	else
	    fd = 0;
	if ((flags & F_APPEND) == 0 || fd == -1) {
	    if (!(flags & F_OVERWRITE) && no_clobber) {
		if (flags & F_APPEND)
		    FUNC13(ERR_SYSTEM, tmp, FUNC14(errno));
		FUNC1(tmp);
	    }
	    if ((fd = FUNC17(tmp, 0666)) < 0)
		FUNC13(ERR_SYSTEM, tmp, FUNC14(errno));
	    /* allow input files larger than 2Gb  */
#ifndef WINNT_NATIVE
	    (void) FUNC8(fd, F_SETFL, FUNC8(fd, F_GETFL) | O_LARGEFILE);
#endif /*!WINNT_NATIVE*/
	}
	FUNC3(tmp);
	(void) FUNC6(fd, 1);
	is1atty = FUNC9(1);
    }
    else if (flags & F_PIPEOUT) {
	FUNC16(1);
	FUNC0(FUNC7(pipeout[1]));
	is1atty = 0;
    }
    else {
	FUNC16(1);
	FUNC0(FUNC7(SHOUT));
	is1atty = isoutatty;
# if defined(CLOSE_ON_EXEC) && defined(CLEX_DUPS)
	(void) close_on_exec(1, 0);
# endif /* CLOSE_ON_EXEC && CLEX_DUPS */
    }

    FUNC16(2);
    if (flags & F_STDERR) {
	FUNC0(FUNC7(1));
	is2atty = is1atty;
    }
    else {
	FUNC0(FUNC7(SHDIAG));
	is2atty = isdiagatty;
# if defined(CLOSE_ON_EXEC) && defined(CLEX_DUPS)
	(void) close_on_exec(2, 0);
# endif /* CLOSE_ON_EXEC && CLEX_DUPS */
    }
    didfds = 1;
}