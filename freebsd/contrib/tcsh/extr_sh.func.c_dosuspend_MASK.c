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
struct sigaction {int dummy; } ;
typedef  int /*<<< orphan*/ * command ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_JOBCONTROL ; 
 int /*<<< orphan*/  ERR_SUSPLOG ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  FSHTTY ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ loginsh ; 
 int /*<<< orphan*/  opgrp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shpgrp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tpgrp ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(Char **v, struct command *c)
{
#ifdef BSDJOBS
    struct sigaction old;
#endif /* BSDJOBS */

    FUNC0(c);
    FUNC0(v);

    if (loginsh)
	FUNC7(ERR_SUSPLOG);
    FUNC10();

#ifdef BSDJOBS
    sigaction(SIGTSTP, NULL, &old);
    signal(SIGTSTP, SIG_DFL);
    (void) kill(0, SIGTSTP);
    /* the shell stops here */
    sigaction(SIGTSTP, &old, NULL);
#else /* !BSDJOBS */
    FUNC7(ERR_JOBCONTROL);
#endif /* BSDJOBS */

#ifdef BSDJOBS
    if (tpgrp != -1) {
	if (grabpgrp(FSHTTY, opgrp) == -1)
	    stderror(ERR_SYSTEM, "tcgetpgrp", strerror(errno));
	(void) setpgid(0, shpgrp);
	(void) tcsetpgrp(FSHTTY, shpgrp);
    }
#endif /* BSDJOBS */
    (void) FUNC3(FSHTTY);
}