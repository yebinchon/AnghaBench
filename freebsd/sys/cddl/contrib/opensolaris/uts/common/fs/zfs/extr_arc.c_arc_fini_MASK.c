#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_refcnt; } ;
typedef  TYPE_1__ arc_prune_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  arc_adjust_lock ; 
 int /*<<< orphan*/  arc_adjust_waiters_cv ; 
 int /*<<< orphan*/  arc_adjust_zthr ; 
 int /*<<< orphan*/  arc_dnlc_evicts_cv ; 
 int /*<<< orphan*/  arc_dnlc_evicts_lock ; 
 scalar_t__ arc_dnlc_evicts_thread_exit ; 
 int /*<<< orphan*/ * arc_event_lowmem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arc_initialized ; 
 int /*<<< orphan*/ * arc_ksp ; 
 int /*<<< orphan*/  arc_loaned_bytes ; 
 int /*<<< orphan*/  arc_prune_list ; 
 int /*<<< orphan*/  arc_prune_mtx ; 
 int /*<<< orphan*/  arc_prune_taskq ; 
 int /*<<< orphan*/  arc_reap_zthr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_lowmem ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

void
FUNC22(void)
{
	arc_prune_t *p;

#ifdef _KERNEL
	if (arc_event_lowmem != NULL)
		EVENTHANDLER_DEREGISTER(vm_lowmem, arc_event_lowmem);
#endif

	/* Use B_TRUE to ensure *all* buffers are evicted */
	FUNC2(NULL, B_TRUE);

	FUNC14(&arc_dnlc_evicts_lock);
	arc_dnlc_evicts_thread_exit = TRUE;
	/*
	 * The user evicts thread will set arc_user_evicts_thread_exit
	 * to FALSE when it is finished exiting; we're waiting for that.
	 */
	while (arc_dnlc_evicts_thread_exit) {
		FUNC6(&arc_dnlc_evicts_cv);
		FUNC7(&arc_dnlc_evicts_cv, &arc_dnlc_evicts_lock);
	}
	FUNC15(&arc_dnlc_evicts_lock);

	arc_initialized = B_FALSE;

	if (arc_ksp != NULL) {
		FUNC9(arc_ksp);
		arc_ksp = NULL;
	}

	FUNC17(arc_prune_taskq);
	FUNC16(arc_prune_taskq);

	FUNC14(&arc_prune_mtx);
	while ((p = FUNC11(&arc_prune_list)) != NULL) {
		FUNC12(&arc_prune_list, p);
		FUNC19(&p->p_refcnt, &arc_prune_list);
		FUNC18(&p->p_refcnt);
		FUNC8(p, sizeof (*p));
	}
	FUNC15(&arc_prune_mtx);

	FUNC10(&arc_prune_list);
	FUNC13(&arc_prune_mtx);

	(void) FUNC20(arc_adjust_zthr);
	FUNC21(arc_adjust_zthr);

	FUNC13(&arc_dnlc_evicts_lock);
	FUNC5(&arc_dnlc_evicts_cv);

	(void) FUNC20(arc_reap_zthr);
	FUNC21(arc_reap_zthr);

	FUNC13(&arc_adjust_lock);
	FUNC5(&arc_adjust_waiters_cv);

	/*
	 * buf_fini() must proceed arc_state_fini() because buf_fin() may
	 * trigger the release of kmem magazines, which can callback to
	 * arc_space_return() which accesses aggsums freed in act_state_fini().
	 */
	FUNC4();
	FUNC3();

	FUNC0(arc_loaned_bytes);
}