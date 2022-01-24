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
struct process {scalar_t__ p_procid; struct process* p_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  pcurrjob ; 
 int /*<<< orphan*/  FUNC0 (struct process*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct process proclist ; 

void
FUNC2(void)
{
    struct process *fp, *pp;

    /*
     * Here's where dead procs get flushed.
     */
    for (pp = (fp = &proclist)->p_next; pp != NULL; pp = (fp = pp)->p_next)
	if (pp->p_procid == 0) {
	    fp->p_next = pp->p_next;
	    FUNC0(pp);
	    pp = fp;
	}
    FUNC1(pcurrjob);
}