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
struct process {int p_flags; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;

/* Variables and functions */
 int NAME ; 
 int NUMBER ; 
 int PNEEDNOTE ; 
 int PRUNNING ; 
 int PSTOPPED ; 
 int REASON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 scalar_t__ neednote ; 
 int /*<<< orphan*/  pchild_disabled ; 
 int /*<<< orphan*/  FUNC2 (struct process*) ; 
 int FUNC3 (struct process*,int) ; 
 TYPE_1__ proclist ; 

void
FUNC4(void)
{
    struct process *pp;
    int     flags;

    neednote = 0;
    for (pp = proclist.p_next; pp != NULL; pp = pp->p_next) {
	if (pp->p_flags & PNEEDNOTE) {
	    pchild_disabled++;
	    FUNC0(&pchild_disabled, disabled_cleanup);
	    pp->p_flags &= ~PNEEDNOTE;
	    flags = FUNC3(pp, NUMBER | NAME | REASON);
	    if ((flags & (PRUNNING | PSTOPPED)) == 0)
		FUNC2(pp);
	    FUNC1(&pchild_disabled);
	}
    }
}