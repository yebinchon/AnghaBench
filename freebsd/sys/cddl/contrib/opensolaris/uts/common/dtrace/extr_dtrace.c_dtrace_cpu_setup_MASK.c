#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  processorid_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dts_options; int /*<<< orphan*/  dts_activity; } ;
typedef  TYPE_1__ dtrace_state_t ;
typedef  int /*<<< orphan*/  dtrace_optval_t ;
typedef  int cpu_setup_t ;
struct TYPE_5__ {TYPE_1__* dta_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CPU_CONFIG 129 
#define  CPU_UNCONFIG 128 
 size_t DTRACEOPT_BUFRESIZE ; 
 int /*<<< orphan*/  DTRACEOPT_BUFRESIZE_MANUAL ; 
 size_t DTRACEOPT_CPU ; 
 int /*<<< orphan*/  DTRACEOPT_UNSET ; 
 int /*<<< orphan*/  DTRACE_ACTIVITY_ACTIVE ; 
 int /*<<< orphan*/  DTRACE_CPUALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_lock ; 
 TYPE_3__ dtrace_anon ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(cpu_setup_t what, processorid_t cpu)
{
	FUNC0(FUNC1(&cpu_lock));
	FUNC3(&dtrace_lock);

	switch (what) {
	case CPU_CONFIG: {
		dtrace_state_t *state;
		dtrace_optval_t *opt, rs, c;

		/*
		 * For now, we only allocate a new buffer for anonymous state.
		 */
		if ((state = dtrace_anon.dta_state) == NULL)
			break;

		if (state->dts_activity != DTRACE_ACTIVITY_ACTIVE)
			break;

		opt = state->dts_options;
		c = opt[DTRACEOPT_CPU];

		if (c != DTRACE_CPUALL && c != DTRACEOPT_UNSET && c != cpu)
			break;

		/*
		 * Regardless of what the actual policy is, we're going to
		 * temporarily set our resize policy to be manual.  We're
		 * also going to temporarily set our CPU option to denote
		 * the newly configured CPU.
		 */
		rs = opt[DTRACEOPT_BUFRESIZE];
		opt[DTRACEOPT_BUFRESIZE] = DTRACEOPT_BUFRESIZE_MANUAL;
		opt[DTRACEOPT_CPU] = (dtrace_optval_t)cpu;

		(void) FUNC2(state);

		opt[DTRACEOPT_BUFRESIZE] = rs;
		opt[DTRACEOPT_CPU] = c;

		break;
	}

	case CPU_UNCONFIG:
		/*
		 * We don't free the buffer in the CPU_UNCONFIG case.  (The
		 * buffer will be freed when the consumer exits.)
		 */
		break;

	default:
		break;
	}

	FUNC4(&dtrace_lock);
	return (0);
}