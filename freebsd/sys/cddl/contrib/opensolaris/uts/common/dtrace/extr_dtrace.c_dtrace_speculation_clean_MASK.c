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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  dtrace_xcall_t ;
struct TYPE_5__ {size_t dts_nspeculations; TYPE_2__* dts_speculations; } ;
typedef  TYPE_1__ dtrace_state_t ;
struct TYPE_6__ {int dtsp_cleaning; scalar_t__ dtsp_state; } ;
typedef  TYPE_2__ dtrace_speculation_t ;
typedef  scalar_t__ dtrace_speculation_state_t ;
typedef  size_t dtrace_specid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACESPEC_COMMITTINGMANY ; 
 scalar_t__ DTRACESPEC_DISCARDING ; 
 scalar_t__ DTRACESPEC_INACTIVE ; 
 int /*<<< orphan*/  DTRACE_CPUALL ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ dtrace_speculation_clean_here ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(dtrace_state_t *state)
{
	int work = 0, rv;
	dtrace_specid_t i;

	for (i = 0; i < state->dts_nspeculations; i++) {
		dtrace_speculation_t *spec = &state->dts_speculations[i];

		FUNC0(!spec->dtsp_cleaning);

		if (spec->dtsp_state != DTRACESPEC_DISCARDING &&
		    spec->dtsp_state != DTRACESPEC_COMMITTINGMANY)
			continue;

		work++;
		spec->dtsp_cleaning = 1;
	}

	if (!work)
		return;

	FUNC2(DTRACE_CPUALL,
	    (dtrace_xcall_t)dtrace_speculation_clean_here, state);

	/*
	 * We now know that all CPUs have committed or discarded their
	 * speculation buffers, as appropriate.  We can now set the state
	 * to inactive.
	 */
	for (i = 0; i < state->dts_nspeculations; i++) {
		dtrace_speculation_t *spec = &state->dts_speculations[i];
		dtrace_speculation_state_t current, new;

		if (!spec->dtsp_cleaning)
			continue;

		current = spec->dtsp_state;
		FUNC0(current == DTRACESPEC_DISCARDING ||
		    current == DTRACESPEC_COMMITTINGMANY);

		new = DTRACESPEC_INACTIVE;

		rv = FUNC1((uint32_t *)&spec->dtsp_state, current, new);
		FUNC0(rv == current);
		spec->dtsp_cleaning = 0;
	}
}