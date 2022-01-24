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
struct process {int p_flags; scalar_t__ p_procid; scalar_t__ p_jobid; scalar_t__ p_index; struct process* p_friends; } ;

/* Variables and functions */
 int PFOREGND ; 
 int PSTOPPED ; 
 struct process* pcurrjob ; 
 struct process* pholdjob ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(void)
{
    struct process *pp, *tp;

    if (pcurrjob && (pcurrjob->p_flags & (PFOREGND | PSTOPPED)) == 0) {
	pp = pcurrjob;
	pcurrjob = NULL;
	while (pp->p_procid != pp->p_jobid)
	    pp = pp->p_friends;
	FUNC0("[%d]", pp->p_index);
	tp = pp;
	do {
	    FUNC0(" %d", pp->p_procid);
	    pp = pp->p_friends;
	} while (pp != tp);
	FUNC1('\n');
    }
    pholdjob = pcurrjob = 0;
}