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
struct execash_state {int SHIN; int SHOUT; int SHDIAG; int OLDSTD; int saveIN; int saveOUT; int saveDIAG; int saveSTD; scalar_t__ didcch; scalar_t__ didfds; int /*<<< orphan*/  sigterm; int /*<<< orphan*/  sigquit; int /*<<< orphan*/  sigint; } ;
struct command {int /*<<< orphan*/  t_dcom; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int OLDSTD ; 
 int SHDIAG ; 
 int SHIN ; 
 int SHOUT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  STRsavehist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int __nt_really_exec ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ chkstop ; 
 int /*<<< orphan*/  FUNC2 (struct execash_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct execash_state*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ didcch ; 
 scalar_t__ didfds ; 
 int /*<<< orphan*/  FUNC6 (struct command*,int) ; 
 int /*<<< orphan*/  execash_cleanup ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ mainpid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parintr ; 
 int /*<<< orphan*/  parterm ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC13(Char **t, struct command *kp)
{
    struct execash_state state;

    FUNC0(t);
    if (chkstop == 0 && setintr)
	FUNC9(0);
    /*
     * Hmm, we don't really want to do that now because we might
     * fail, but what is the choice
     */
    FUNC10(NULL, FUNC1(STRsavehist) != NULL);


    FUNC12(SIGINT, &parintr, &state.sigint);
    FUNC12(SIGQUIT, &parintr, &state.sigquit);
    FUNC12(SIGTERM, &parterm, &state.sigterm);

    state.didfds = didfds;
#ifndef CLOSE_ON_EXEC
    state.didcch = didcch;
#endif /* CLOSE_ON_EXEC */
    state.SHIN = SHIN;
    state.SHOUT = SHOUT;
    state.SHDIAG = SHDIAG;
    state.OLDSTD = OLDSTD;

    (void)FUNC4 (state.saveIN = FUNC5(SHIN, -1), 1);
    (void)FUNC4 (state.saveOUT = FUNC5(SHOUT, -1), 1);
    (void)FUNC4 (state.saveDIAG = FUNC5(SHDIAG, -1), 1);
    (void)FUNC4 (state.saveSTD = FUNC5(OLDSTD, -1), 1);

    FUNC8(kp->t_dcom, 1);

    (void)FUNC4 (SHIN = FUNC5(0, -1), 1);
    (void)FUNC4 (SHOUT = FUNC5(1, -1), 1);
    (void)FUNC4 (SHDIAG = FUNC5(2, -1), 1);
#ifndef CLOSE_ON_EXEC
    didcch = 0;
#endif /* CLOSE_ON_EXEC */
    didfds = 0;
    FUNC2(&state, execash_cleanup);

    /*
     * Decrement the shell level, if not in a subshell
     */
    if (mainpid == FUNC7())
	FUNC11(-1);
#ifdef WINNT_NATIVE
    __nt_really_exec=1;
#endif /* WINNT_NATIVE */
    FUNC6(kp, 1);

    FUNC3(&state);
}