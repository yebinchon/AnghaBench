#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_func_t ;
struct TYPE_13__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;int /*<<< orphan*/  (* dtps_destroy ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {scalar_t__ dtpv_defunct; struct TYPE_14__* dtpv_name; struct TYPE_14__* dtpv_next; scalar_t__ dtpr_id; struct TYPE_14__* dtpr_name; struct TYPE_14__* dtpr_func; struct TYPE_14__* dtpr_mod; int /*<<< orphan*/  dtpr_arg; int /*<<< orphan*/  dtpv_arg; TYPE_2__ dtpv_pops; struct TYPE_14__* dtpr_nextmod; struct TYPE_14__* dtpr_provider; int /*<<< orphan*/ * dtpr_ecb; } ;
typedef  TYPE_3__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
typedef  TYPE_3__ dtrace_probe_t ;
struct TYPE_12__ {scalar_t__ dts_necbs; } ;
struct TYPE_11__ {TYPE_1__* dta_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 TYPE_10__ dtrace_anon ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/ * dtrace_devi ; 
 scalar_t__ dtrace_enabling_reap ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int dtrace_nprobes ; 
 scalar_t__ dtrace_nullop ; 
 scalar_t__ dtrace_opens ; 
 TYPE_3__** dtrace_probes ; 
 TYPE_3__* dtrace_provider ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  dtrace_taskq ; 
 scalar_t__ dtrace_unregister_defunct_reap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  mod_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int) ; 

int
FUNC14(dtrace_provider_id_t id)
{
	dtrace_provider_t *old = (dtrace_provider_t *)id;
	dtrace_provider_t *prev = NULL;
	int i, self = 0, noreap = 0;
	dtrace_probe_t *probe, *first = NULL;

	if (old->dtpv_pops.dtps_enable ==
	    (void (*)(void *, dtrace_id_t, void *))dtrace_nullop) {
		/*
		 * If DTrace itself is the provider, we're called with locks
		 * already held.
		 */
		FUNC0(old == dtrace_provider);
#ifdef illumos
		ASSERT(dtrace_devi != NULL);
#endif
		FUNC0(FUNC1(&dtrace_provider_lock));
		FUNC0(FUNC1(&dtrace_lock));
		self = 1;

		if (dtrace_provider->dtpv_next != NULL) {
			/*
			 * There's another provider here; return failure.
			 */
			return (EBUSY);
		}
	} else {
		FUNC7(&dtrace_provider_lock);
#ifdef illumos
		mutex_enter(&mod_lock);
#endif
		FUNC7(&dtrace_lock);
	}

	/*
	 * If anyone has /dev/dtrace open, or if there are anonymous enabled
	 * probes, we refuse to let providers slither away, unless this
	 * provider has already been explicitly invalidated.
	 */
	if (!old->dtpv_defunct &&
	    (dtrace_opens || (dtrace_anon.dta_state != NULL &&
	    dtrace_anon.dta_state->dts_necbs > 0))) {
		if (!self) {
			FUNC8(&dtrace_lock);
#ifdef illumos
			mutex_exit(&mod_lock);
#endif
			FUNC8(&dtrace_provider_lock);
		}
		return (EBUSY);
	}

	/*
	 * Attempt to destroy the probes associated with this provider.
	 */
	for (i = 0; i < dtrace_nprobes; i++) {
		if ((probe = dtrace_probes[i]) == NULL)
			continue;

		if (probe->dtpr_provider != old)
			continue;

		if (probe->dtpr_ecb == NULL)
			continue;

		/*
		 * If we are trying to unregister a defunct provider, and the
		 * provider was made defunct within the interval dictated by
		 * dtrace_unregister_defunct_reap, we'll (asynchronously)
		 * attempt to reap our enablings.  To denote that the provider
		 * should reattempt to unregister itself at some point in the
		 * future, we will return a differentiable error code (EAGAIN
		 * instead of EBUSY) in this case.
		 */
		if (FUNC2() - old->dtpv_defunct >
		    dtrace_unregister_defunct_reap)
			noreap = 1;

		if (!self) {
			FUNC8(&dtrace_lock);
#ifdef illumos
			mutex_exit(&mod_lock);
#endif
			FUNC8(&dtrace_provider_lock);
		}

		if (noreap)
			return (EBUSY);

		(void) FUNC12(dtrace_taskq,
		    (task_func_t *)dtrace_enabling_reap, NULL, TQ_SLEEP);

		return (EAGAIN);
	}

	/*
	 * All of the probes for this provider are disabled; we can safely
	 * remove all of them from their hash chains and from the probe array.
	 */
	for (i = 0; i < dtrace_nprobes; i++) {
		if ((probe = dtrace_probes[i]) == NULL)
			continue;

		if (probe->dtpr_provider != old)
			continue;

		dtrace_probes[i] = NULL;

		FUNC3(dtrace_bymod, probe);
		FUNC3(dtrace_byfunc, probe);
		FUNC3(dtrace_byname, probe);

		if (first == NULL) {
			first = probe;
			probe->dtpr_nextmod = NULL;
		} else {
			probe->dtpr_nextmod = first;
			first = probe;
		}
	}

	/*
	 * The provider's probes have been removed from the hash chains and
	 * from the probe array.  Now issue a dtrace_sync() to be sure that
	 * everyone has cleared out from any probe array processing.
	 */
	FUNC4();

	for (probe = first; probe != NULL; probe = first) {
		first = probe->dtpr_nextmod;

		old->dtpv_pops.dtps_destroy(old->dtpv_arg, probe->dtpr_id,
		    probe->dtpr_arg);
		FUNC6(probe->dtpr_mod, FUNC10(probe->dtpr_mod) + 1);
		FUNC6(probe->dtpr_func, FUNC10(probe->dtpr_func) + 1);
		FUNC6(probe->dtpr_name, FUNC10(probe->dtpr_name) + 1);
#ifdef illumos
		vmem_free(dtrace_arena, (void *)(uintptr_t)(probe->dtpr_id), 1);
#else
		FUNC5(dtrace_arena, probe->dtpr_id);
#endif
		FUNC6(probe, sizeof (dtrace_probe_t));
	}

	if ((prev = dtrace_provider) == old) {
#ifdef illumos
		ASSERT(self || dtrace_devi == NULL);
		ASSERT(old->dtpv_next == NULL || dtrace_devi == NULL);
#endif
		dtrace_provider = old->dtpv_next;
	} else {
		while (prev != NULL && prev->dtpv_next != old)
			prev = prev->dtpv_next;

		if (prev == NULL) {
			FUNC9("attempt to unregister non-existent "
			    "dtrace provider %p\n", (void *)id);
		}

		prev->dtpv_next = old->dtpv_next;
	}

	if (!self) {
		FUNC8(&dtrace_lock);
#ifdef illumos
		mutex_exit(&mod_lock);
#endif
		FUNC8(&dtrace_provider_lock);
	}

	FUNC6(old->dtpv_name, FUNC10(old->dtpv_name) + 1);
	FUNC6(old, sizeof (dtrace_provider_t));

	return (0);
}