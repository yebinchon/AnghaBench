#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dts_necbs; } ;
typedef  TYPE_1__ dtrace_state_t ;
typedef  int /*<<< orphan*/  dtrace_provider_id_t ;
typedef  int /*<<< orphan*/  dtrace_anon_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_anon ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/ * dtrace_byfunc ; 
 int /*<<< orphan*/ * dtrace_bymod ; 
 int /*<<< orphan*/ * dtrace_byname ; 
 int /*<<< orphan*/  dtrace_dev ; 
 int /*<<< orphan*/  dtrace_errlock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ dtrace_helpers ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  dtrace_kld_load_tag ; 
 int /*<<< orphan*/  dtrace_kld_unload_try_tag ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_meta_lock ; 
 scalar_t__ dtrace_nprobes ; 
 scalar_t__ dtrace_opens ; 
 int /*<<< orphan*/ * dtrace_probes ; 
 int /*<<< orphan*/ * dtrace_provider ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/ * dtrace_retained ; 
 int /*<<< orphan*/  dtrace_state_cache ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_taskq ; 
 int /*<<< orphan*/ * dtrace_toxrange ; 
 scalar_t__ dtrace_toxranges ; 
 scalar_t__ dtrace_toxranges_max ; 
 int /*<<< orphan*/ * dtrace_trap_func ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ dtrace_vtime_active ; 
 scalar_t__ dtrace_vtime_references ; 
 int /*<<< orphan*/ * dtrace_vtime_switch_func ; 
 int /*<<< orphan*/  helper_dev ; 
 int /*<<< orphan*/  kld_load ; 
 int /*<<< orphan*/  kld_unload_try ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16()
{
	dtrace_state_t *state;
	int error = 0;

	FUNC4(dtrace_dev);
	FUNC4(helper_dev);

	FUNC13(&dtrace_provider_lock);
	FUNC13(&dtrace_lock);
	FUNC13(&cpu_lock);

	FUNC0(dtrace_opens == 0);

	if (dtrace_helpers > 0) {
		FUNC14(&cpu_lock);
		FUNC14(&dtrace_lock);
		FUNC14(&dtrace_provider_lock);
		return (EBUSY);
	}

	if (FUNC9((dtrace_provider_id_t)dtrace_provider) != 0) {
		FUNC14(&cpu_lock);
		FUNC14(&dtrace_lock);
		FUNC14(&dtrace_provider_lock);
		return (EBUSY);
	}

	dtrace_provider = NULL;
	FUNC1(kld_load, dtrace_kld_load_tag);
	FUNC1(kld_unload_try, dtrace_kld_unload_try_tag);

	if ((state = FUNC5()) != NULL) {
		/*
		 * If there were ECBs on this state, the provider should
		 * have not been allowed to detach; assert that there is
		 * none.
		 */
		FUNC0(state->dts_necbs == 0);
		FUNC8(state);
	}

	FUNC2(&dtrace_anon, sizeof (dtrace_anon_t));

	FUNC14(&cpu_lock);

	if (dtrace_probes != NULL) {
		FUNC11(dtrace_probes, 0);
		dtrace_probes = NULL;
		dtrace_nprobes = 0;
	}

	FUNC6(dtrace_bymod);
	FUNC6(dtrace_byfunc);
	FUNC6(dtrace_byname);
	dtrace_bymod = NULL;
	dtrace_byfunc = NULL;
	dtrace_byname = NULL;

	FUNC10(dtrace_state_cache);

	FUNC3(dtrace_arena);

	if (dtrace_toxrange != NULL) {
		FUNC11(dtrace_toxrange, 0);
		dtrace_toxrange = NULL;
		dtrace_toxranges = 0;
		dtrace_toxranges_max = 0;
	}

	FUNC0(dtrace_vtime_references == 0);
	FUNC0(dtrace_opens == 0);
	FUNC0(dtrace_retained == NULL);

	FUNC14(&dtrace_lock);
	FUNC14(&dtrace_provider_lock);

	FUNC12(&dtrace_meta_lock);
	FUNC12(&dtrace_provider_lock);
	FUNC12(&dtrace_lock);
#ifdef DEBUG
	mutex_destroy(&dtrace_errlock);
#endif

	FUNC15(dtrace_taskq);

	/* Reset our hook for exceptions. */
	FUNC7();

	/*
	 * Reset our hook for thread switches, but ensure that vtime isn't
	 * active first.
	 */
	dtrace_vtime_active = 0;
	dtrace_vtime_switch_func = NULL;

	/* Unhook from the trap handler. */
	dtrace_trap_func = NULL;

	return (error);
}