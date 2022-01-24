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
struct process {int p_index; scalar_t__ p_procid; scalar_t__ p_jobid; char* p_command; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;
typedef  char Char ;

/* Variables and functions */
 int ERR_AMBIG ; 
 int ERR_JOBCUR ; 
 int ERR_JOBPAT ; 
 int ERR_JOBPREV ; 
 int ERR_NAME ; 
 int ERR_NOSUCHJOB ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  STRcent2 ; 
 int /*<<< orphan*/  STRcenthash ; 
 int /*<<< orphan*/  STRcentminus ; 
 int /*<<< orphan*/  STRcentplus ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct process* pcurrent ; 
 struct process* pprevious ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 TYPE_1__ proclist ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

struct process *
FUNC6(Char *cp)
{
    struct process *pp, *np;

    if (cp == 0 || cp[1] == 0 || FUNC2(cp, STRcent2) || FUNC2(cp, STRcentplus)) {
	if (pcurrent == NULL)
	    FUNC5(ERR_NAME | ERR_JOBCUR);
	return (pcurrent);
    }
    if (FUNC2(cp, STRcentminus) || FUNC2(cp, STRcenthash)) {
	if (pprevious == NULL)
	    FUNC5(ERR_NAME | ERR_JOBPREV);
	return (pprevious);
    }
    if (FUNC0(cp[1])) {
	int     idx = FUNC1(FUNC4(cp + 1));

	for (pp = proclist.p_next; pp; pp = pp->p_next)
	    if (pp->p_index == idx && pp->p_procid == pp->p_jobid)
		return (pp);
	FUNC5(ERR_NAME | ERR_NOSUCHJOB);
    }
    np = NULL;
    for (pp = proclist.p_next; pp; pp = pp->p_next)
	if (pp->p_procid == pp->p_jobid) {
	    if (cp[1] == '?') {
		Char *dp;

		for (dp = pp->p_command; *dp; dp++) {
		    if (*dp != cp[2])
			continue;
		    if (FUNC3(cp + 2, dp))
			goto match;
		}
	    }
	    else if (FUNC3(cp + 1, pp->p_command)) {
	match:
		if (np)
		    FUNC5(ERR_NAME | ERR_AMBIG);
		np = pp;
	    }
	}
    if (np)
	return (np);
    FUNC5(ERR_NAME | (cp[1] == '?' ? ERR_JOBPAT : ERR_NOSUCHJOB));
    /* NOTREACHED */
    return (0);
}