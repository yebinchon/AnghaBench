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
struct process {int p_flags; scalar_t__ p_procid; struct process* p_next; } ;
typedef  int /*<<< orphan*/ * command ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {struct process* p_next; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int PRUNNING ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 () ; 
 int pintr_disabled ; 
 scalar_t__ pjobs ; 
 TYPE_1__ proclist ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(Char **v, struct command *c)
{
    struct process *pp;

    /* the current block mask to be able to restore */
    sigset_t old_mask;

    /* block mask for critical section: OLD_MASK U {SIGCHLD} */
    sigset_t block_mask;

    /* ignore those during blocking sigsuspend:
       OLD_MASK / {SIGCHLD, possibly(SIGINT)} */
    sigset_t pause_mask;

    int opintr_disabled, gotsig;

    FUNC0(c);
    FUNC0(v);
    pjobs++;

    FUNC4(SIG_BLOCK, NULL, &pause_mask);
    FUNC3(&pause_mask, SIGCHLD);
    if (setintr)
	FUNC3(&pause_mask, SIGINT);

    /* critical section, block also SIGCHLD */
    FUNC4(SIG_BLOCK, NULL, &block_mask);
    FUNC2(&block_mask, SIGCHLD);
    FUNC4(SIG_BLOCK, &block_mask, &old_mask);

    /* detect older SIGCHLDs and remove PRUNNING flag from proclist */
    (void)FUNC1();

loop:
    for (pp = proclist.p_next; pp; pp = pp->p_next)
	if (pp->p_procid &&	/* pp->p_procid == pp->p_jobid && */
	    pp->p_flags & PRUNNING) {
	    /* wait for (or pick up alredy blocked) SIGCHLD */
	    FUNC5(&pause_mask);

	    /* make the 'wait' interuptable by CTRL-C */
	    opintr_disabled = pintr_disabled;
	    pintr_disabled = 0;
	    gotsig = FUNC1();
	    pintr_disabled = opintr_disabled;
	    if (gotsig)
		break;
	    goto loop;
	}
    pjobs = 0;

    FUNC4(SIG_SETMASK, &old_mask, NULL);
}