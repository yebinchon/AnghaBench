#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dtvs_dynvars; } ;
struct TYPE_6__ {int* dts_options; scalar_t__ dts_activity; int /*<<< orphan*/  dts_cleaner; TYPE_1__ dts_vstate; } ;
typedef  TYPE_2__ dtrace_state_t ;
typedef  int dtrace_optval_t ;

/* Variables and functions */
 size_t DTRACEOPT_CLEANRATE ; 
 scalar_t__ DTRACE_ACTIVITY_INACTIVE ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	dtrace_state_t *state = arg;
	dtrace_optval_t *opt = state->dts_options;

	if (state->dts_activity == DTRACE_ACTIVITY_INACTIVE)
		return;

	FUNC1(&state->dts_vstate.dtvs_dynvars);
	FUNC2(state);

	FUNC0(&state->dts_cleaner, hz * opt[DTRACEOPT_CLEANRATE] / NANOSEC,
	    dtrace_state_clean, state);
}