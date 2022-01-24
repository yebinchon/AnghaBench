#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  processorid_t ;
struct TYPE_8__ {int dcr_visible; TYPE_2__* dcr_cred; } ;
struct TYPE_9__ {scalar_t__ dts_activity; scalar_t__ dts_getf; TYPE_3__ dts_cred; scalar_t__ dts_reserve; } ;
typedef  TYPE_4__ dtrace_state_t ;
typedef  int /*<<< orphan*/  dtrace_icookie_t ;
struct TYPE_7__ {TYPE_1__* cr_zone; } ;
struct TYPE_6__ {scalar_t__ zone_dtrace_getf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACE_ACTIVITY_ACTIVE ; 
 scalar_t__ DTRACE_ACTIVITY_COOLDOWN ; 
 scalar_t__ DTRACE_ACTIVITY_DRAINING ; 
 scalar_t__ DTRACE_ACTIVITY_STOPPED ; 
 int DTRACE_CRV_KERNEL ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curcpu ; 
 int /*<<< orphan*/ * dtrace_closef ; 
 scalar_t__ dtrace_getf ; 
 int /*<<< orphan*/ * dtrace_getf_barrier ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_probeid_end ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(dtrace_state_t *state, processorid_t *cpu)
{
	dtrace_icookie_t cookie;

	FUNC0(FUNC1(&dtrace_lock));

	if (state->dts_activity != DTRACE_ACTIVITY_ACTIVE &&
	    state->dts_activity != DTRACE_ACTIVITY_DRAINING)
		return (EINVAL);

	/*
	 * We'll set the activity to DTRACE_ACTIVITY_DRAINING, and issue a sync
	 * to be sure that every CPU has seen it.  See below for the details
	 * on why this is done.
	 */
	state->dts_activity = DTRACE_ACTIVITY_DRAINING;
	FUNC5();

	/*
	 * By this point, it is impossible for any CPU to be still processing
	 * with DTRACE_ACTIVITY_ACTIVE.  We can thus set our activity to
	 * DTRACE_ACTIVITY_COOLDOWN and know that we're not racing with any
	 * other CPU in dtrace_buffer_reserve().  This allows dtrace_probe()
	 * and callees to know that the activity is DTRACE_ACTIVITY_COOLDOWN
	 * iff we're in the END probe.
	 */
	state->dts_activity = DTRACE_ACTIVITY_COOLDOWN;
	FUNC5();
	FUNC0(state->dts_activity == DTRACE_ACTIVITY_COOLDOWN);

	/*
	 * Finally, we can release the reserve and call the END probe.  We
	 * disable interrupts across calling the END probe to allow us to
	 * return the CPU on which we actually called the END probe.  This
	 * allows user-land to be sure that this CPU's principal buffer is
	 * processed last.
	 */
	state->dts_reserve = 0;

	cookie = FUNC2();
	*cpu = curcpu;
	FUNC4(dtrace_probeid_end,
	    (uint64_t)(uintptr_t)state, 0, 0, 0, 0);
	FUNC3(cookie);

	state->dts_activity = DTRACE_ACTIVITY_STOPPED;
	FUNC5();

#ifdef illumos
	if (state->dts_getf != 0 &&
	    !(state->dts_cred.dcr_visible & DTRACE_CRV_KERNEL)) {
		/*
		 * We don't have kernel privs but we have at least one call
		 * to getf(); we need to lower our zone's count, and (if
		 * this is the last enabling to have an unprivileged call
		 * to getf()) we need to clear the closef() hook.
		 */
		ASSERT(state->dts_cred.dcr_cred->cr_zone->zone_dtrace_getf > 0);
		ASSERT(dtrace_closef == dtrace_getf_barrier);
		ASSERT(dtrace_getf > 0);

		state->dts_cred.dcr_cred->cr_zone->zone_dtrace_getf--;

		if (--dtrace_getf == 0)
			dtrace_closef = NULL;
	}
#endif

	return (0);
}