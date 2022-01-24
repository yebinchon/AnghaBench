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
struct varent {int /*<<< orphan*/ ** vec; } ;
struct process {scalar_t__ p_procid; scalar_t__ p_jobid; int p_flags; int /*<<< orphan*/  p_command; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int PALLSTATES ; 
 int PINTERRUPTED ; 
 int PSIGNALED ; 
 int PSTOPPED ; 
 int /*<<< orphan*/  STReditors ; 
 struct varent* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 struct process* pcurrent ; 
 struct process* pprevious ; 
 TYPE_1__ proclist ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*,size_t) ; 
 char* FUNC6 (char const*,char) ; 

struct process *
FUNC7(void)
{
    struct process *pp, *retp;
    const char *ep = NULL, *vp = NULL;
    char *cp, *p;
    size_t epl = 0, vpl = 0;
    int pstatus;
    struct varent *varp;
    Char **vv;

    if (pcurrent == NULL)	/* see if we have any jobs */
	return NULL;		/* nope */

    if ((varp = FUNC0(STReditors)) != NULL)
	vv = varp->vec;
    else
	vv = NULL;

    if (! vv) {
	if ((ep = FUNC2("EDITOR")) != NULL) {	/* if we have a value */
	    if ((p = FUNC6(ep, '/')) != NULL) 	/* if it has a path */
		ep = p + 1;		/* then we want only the last part */
	}
	else
	    ep = "ed";

	if ((vp = FUNC2("VISUAL")) != NULL) {	/* if we have a value */
	    if ((p = FUNC6(vp, '/')) != NULL) 	/* and it has a path */
		vp = p + 1;		/* then we want only the last part */
	}
	else
	    vp = "vi";

	for (vpl = 0; vp[vpl] && !FUNC3((unsigned char)vp[vpl]); vpl++)
	    continue;
	for (epl = 0; ep[epl] && !FUNC3((unsigned char)ep[epl]); epl++)
	    continue;
    }

    retp = NULL;
    for (pp = proclist.p_next; pp; pp = pp->p_next)
	if (pp->p_procid == pp->p_jobid) {

	    /*
	     * Only foreground an edit session if it is suspended.  Some GUI
	     * editors have may be happily running in a separate window, no
	     * point in foregrounding these if they're already running - webb
	     */
	    pstatus = (int) (pp->p_flags & PALLSTATES);
	    if (pstatus != PINTERRUPTED && pstatus != PSTOPPED &&
		pstatus != PSIGNALED)
		continue;

	    p = FUNC4(pp->p_command);
	    /* get the first word */
	    for (cp = p; *cp && !FUNC3((unsigned char) *cp); cp++)
		continue;
	    *cp = '\0';
		
	    if ((cp = FUNC6(p, '/')) != NULL)	/* and it has a path */
		cp = cp + 1;		/* then we want only the last part */
	    else
		cp = p;			/* else we get all of it */

	    /*
	     * If we find the current name in the $editors array (if set)
	     * or as $EDITOR or $VISUAL (if $editors not set), fg it.
	     */
	    if ((vv && FUNC1(vv, cp)) ||
	        (epl && FUNC5(ep, cp, epl) == 0 && cp[epl] == '\0') ||
		(vpl && FUNC5(vp, cp, vpl) == 0 && cp[vpl] == '\0')) {
		/*
		 * If there is a choice, then choose the current process if
		 * available, or the previous process otherwise, or else
		 * anything will do - Robert Webb (robertw@mulga.cs.mu.oz.au).
		 */
		if (pp == pcurrent)
		    return pp;
		else if (retp == NULL || pp == pprevious)
		    retp = pp;
	    }
	}

    return retp;		/* Will be NULL if we didn't find a job */
}