#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dcr_action; } ;
struct TYPE_8__ {TYPE_1__ dts_cred; } ;
typedef  TYPE_2__ dtrace_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_UPRIV ; 
 int DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER ; 
 int DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE ; 
 int DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG ; 
 TYPE_6__* cpu_core ; 
 size_t curcpu ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(dtrace_state_t *state)
{
	int action = state->dts_cred.dcr_action;

	if (((action & DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE) == 0) &&
	    FUNC2(state) == 0)
		goto bad;

	if (((action & DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER) == 0) &&
	    FUNC1(state) == 0)
		goto bad;

	if (((action & DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG) == 0) &&
	    FUNC0() == 0)
		goto bad;

	return (1);

bad:
	cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_UPRIV;

	return (0);
}