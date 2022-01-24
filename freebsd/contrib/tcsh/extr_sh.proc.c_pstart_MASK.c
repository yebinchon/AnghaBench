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
struct process {int p_flags; int /*<<< orphan*/  p_jobid; int /*<<< orphan*/  p_command; struct process* p_friends; } ;

/* Variables and functions */
 int AMPERSAND ; 
 int /*<<< orphan*/  FSHTTY ; 
 int JOBDIR ; 
 int NAME ; 
 int NUMBER ; 
 int PFOREGND ; 
 int PRUNNING ; 
 int PSTOPPED ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pchild_disabled ; 
 int /*<<< orphan*/  FUNC4 (struct process*) ; 
 int /*<<< orphan*/  FUNC5 (struct process*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct process *pp, int foregnd)
{
    int rv = 0;
    struct process *np;
    /* We don't use jobflags in this function right now (see below) */
    /* long    jobflags = 0; */

    pchild_disabled++;
    FUNC0(&pchild_disabled, disabled_cleanup);
    np = pp;
    do {
	/* We don't use jobflags in this function right now (see below) */
	/* jobflags |= np->p_flags; */
	if (np->p_flags & (PRUNNING | PSTOPPED)) {
	    np->p_flags |= PRUNNING;
	    np->p_flags &= ~PSTOPPED;
	    if (foregnd)
		np->p_flags |= PFOREGND;
	    else
		np->p_flags &= ~PFOREGND;
	}
    } while ((np = np->p_friends) != pp);
    if (!foregnd)
	FUNC4(pp);
    (void) FUNC5(pp, foregnd ? NAME | JOBDIR : NUMBER | NAME | AMPERSAND);

    /* GrP run jobcmd hook if foregrounding */
    if (foregnd) {
	FUNC2(pp->p_command);
    }

#ifdef BSDJOBS
    if (foregnd) {
	rv = tcsetpgrp(FSHTTY, pp->p_jobid);
    }
    /*
     * 1. child process of csh (shell script) receives SIGTTIN/SIGTTOU
     * 2. parent process (csh) receives SIGCHLD
     * 3. The "csh" signal handling function pchild() is invoked
     *    with a SIGCHLD signal.
     * 4. pchild() calls wait3(WNOHANG) which returns 0.
     *    The child process is NOT ready to be waited for at this time.
     *    pchild() returns without picking-up the correct status
     *    for the child process which generated the SIGCHLD.
     * 5. CONSEQUENCE : csh is UNaware that the process is stopped
     * 6. THIS LINE HAS BEEN COMMENTED OUT : if (jobflags&PSTOPPED)
     * 	  (beto@aixwiz.austin.ibm.com - aug/03/91)
     * 7. I removed the line completely and added extra checks for
     *    pstart, so that if a job gets attached to and dies inside
     *    a debugger it does not confuse the shell. [christos]
     * 8. on the nec sx-4 there seems to be a problem, which requires
     *    a syscall(151, getpid(), getpid()) in osinit. Don't ask me
     *    what this is doing. [schott@rzg.mpg.de]
     */

    if (rv != -1)
	rv = killpg(pp->p_jobid, SIGCONT);
#endif /* BSDJOBS */
    FUNC1(&pchild_disabled);
    return rv != -1;
}