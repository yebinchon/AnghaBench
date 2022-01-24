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
typedef  int /*<<< orphan*/ * command ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  STRhome ; 
 int /*<<< orphan*/  STRlogout ; 
 int /*<<< orphan*/  STRnormal ; 
 int /*<<< orphan*/  STRsldtlogout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  _PATH_DOTLOGOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t FUNC3 () ; 
 int do_logout ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ loginsh ; 
 int phup_disabled ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(Char **v, struct command *c)
{
    FUNC0(v);
    FUNC0(c);
    FUNC5();

    if (loginsh) {
	size_t omark;
	sigset_t set;

	FUNC9(&set);
	FUNC10(SIGQUIT, SIG_IGN);
	FUNC8(&set, SIGQUIT);
	FUNC11(SIG_UNBLOCK, &set, NULL);
	FUNC10(SIGINT, SIG_IGN);
	FUNC8(&set, SIGINT);
	FUNC10(SIGTERM, SIG_IGN);
	FUNC8(&set, SIGTERM);
	FUNC10(SIGHUP, SIG_IGN);
	FUNC8(&set, SIGHUP);
	FUNC11(SIG_UNBLOCK, &set, NULL);
	phup_disabled = 1;
	setintr = 0;		/* No interrupts after "logout" */
	/* Trap errors inside .logout */
	omark = FUNC3();
	if (FUNC7() == 0) {
	    if (!(FUNC1(STRlogout)))
		FUNC6(STRlogout, STRnormal, VAR_READWRITE);
#ifdef _PATH_DOTLOGOUT
	    (void) srcfile(_PATH_DOTLOGOUT, 0, 0, NULL);
#endif
	    if (FUNC1(STRhome))
		(void) FUNC12(FUNC14(STRhome), STRsldtlogout);
#ifdef TESLA
	    do_logout = 1;
#endif /* TESLA */
	}
	FUNC2(omark);
    }
    FUNC4();
}