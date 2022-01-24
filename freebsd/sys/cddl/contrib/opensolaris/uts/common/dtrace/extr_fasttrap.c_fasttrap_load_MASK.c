#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong_t ;
typedef  int /*<<< orphan*/  fasttrap_bucket_t ;
struct TYPE_12__ {int fth_nent; int fth_mask; TYPE_2__* fth_table; } ;
struct TYPE_11__ {int fth_nent; int fth_mask; TYPE_3__* fth_table; } ;
struct TYPE_10__ {int fth_nent; int fth_mask; TYPE_1__* fth_table; } ;
struct TYPE_9__ {int /*<<< orphan*/  ftb_mtx; } ;
struct TYPE_8__ {int /*<<< orphan*/  ftb_mtx; } ;
struct TYPE_7__ {int /*<<< orphan*/  ftb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DDI_DEV_T_ANY ; 
 int /*<<< orphan*/  DDI_PROP_DONTPASS ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FASTTRAP_MAX_DEFAULT ; 
 int FASTTRAP_PROCS_DEFAULT_SIZE ; 
 int FASTTRAP_PROVIDERS_DEFAULT_SIZE ; 
 int FASTTRAP_TPOINTS_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  UID_ROOT ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devi ; 
 int /*<<< orphan*/ * dtrace_fasttrap_exec ; 
 int /*<<< orphan*/ * dtrace_fasttrap_exit ; 
 int /*<<< orphan*/ * dtrace_fasttrap_fork ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fasttrap_cdev ; 
 int /*<<< orphan*/  fasttrap_cdevsw ; 
 int /*<<< orphan*/  fasttrap_cleanup_mtx ; 
 int /*<<< orphan*/  fasttrap_cleanup_proc ; 
 int /*<<< orphan*/  fasttrap_count_mtx ; 
 int /*<<< orphan*/  fasttrap_exec_exit ; 
 int /*<<< orphan*/  fasttrap_fork ; 
 int FUNC6 (int) ; 
 void* fasttrap_max ; 
 int /*<<< orphan*/  fasttrap_meta_id ; 
 int /*<<< orphan*/  fasttrap_mops ; 
 int /*<<< orphan*/  fasttrap_pid_cleanup_cb ; 
 TYPE_6__ fasttrap_procs ; 
 TYPE_5__ fasttrap_provs ; 
 int /*<<< orphan*/  fasttrap_thread_dtor ; 
 int /*<<< orphan*/  fasttrap_thread_dtor_tag ; 
 scalar_t__ fasttrap_total ; 
 int /*<<< orphan*/  fasttrap_tp_lock ; 
 TYPE_4__ fasttrap_tpoints ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  thread_dtor ; 
 int tpoints_hash_size ; 

__attribute__((used)) static int
FUNC16(void)
{
	ulong_t nent;
	int i, ret;

        /* Create the /dev/dtrace/fasttrap entry. */
        fasttrap_cdev = FUNC10(&fasttrap_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
            "dtrace/fasttrap");

	FUNC12(&fasttrap_cleanup_mtx, "fasttrap clean", "dtrace", MTX_DEF);
	FUNC14(&fasttrap_count_mtx, "fasttrap count mtx", MUTEX_DEFAULT,
	    NULL);

#ifdef illumos
	fasttrap_max = ddi_getprop(DDI_DEV_T_ANY, devi, DDI_PROP_DONTPASS,
	    "fasttrap-max-probes", FASTTRAP_MAX_DEFAULT);
#endif
	fasttrap_total = 0;

	/*
	 * Conjure up the tracepoints hashtable...
	 */
#ifdef illumos
	nent = ddi_getprop(DDI_DEV_T_ANY, devi, DDI_PROP_DONTPASS,
	    "fasttrap-hash-size", FASTTRAP_TPOINTS_DEFAULT_SIZE);
#else
	nent = tpoints_hash_size;
#endif

	if (nent == 0 || nent > 0x1000000)
		nent = FASTTRAP_TPOINTS_DEFAULT_SIZE;

	tpoints_hash_size = nent;

	if (FUNC2(nent))
		fasttrap_tpoints.fth_nent = nent;
	else
		fasttrap_tpoints.fth_nent = 1 << FUNC6(nent);
	FUNC0(fasttrap_tpoints.fth_nent > 0);
	fasttrap_tpoints.fth_mask = fasttrap_tpoints.fth_nent - 1;
	fasttrap_tpoints.fth_table = FUNC8(fasttrap_tpoints.fth_nent *
	    sizeof (fasttrap_bucket_t), KM_SLEEP);
#ifndef illumos
	for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
		FUNC14(&fasttrap_tpoints.fth_table[i].ftb_mtx,
		    "tracepoints bucket mtx", MUTEX_DEFAULT, NULL);
#endif

	/*
	 * ... and the providers hash table...
	 */
	nent = FASTTRAP_PROVIDERS_DEFAULT_SIZE;
	if (FUNC2(nent))
		fasttrap_provs.fth_nent = nent;
	else
		fasttrap_provs.fth_nent = 1 << FUNC6(nent);
	FUNC0(fasttrap_provs.fth_nent > 0);
	fasttrap_provs.fth_mask = fasttrap_provs.fth_nent - 1;
	fasttrap_provs.fth_table = FUNC8(fasttrap_provs.fth_nent *
	    sizeof (fasttrap_bucket_t), KM_SLEEP);
#ifndef illumos
	for (i = 0; i < fasttrap_provs.fth_nent; i++)
		FUNC14(&fasttrap_provs.fth_table[i].ftb_mtx, 
		    "providers bucket mtx", MUTEX_DEFAULT, NULL);
#endif

	ret = FUNC9(fasttrap_pid_cleanup_cb, NULL,
	    &fasttrap_cleanup_proc, 0, 0, "ftcleanup");
	if (ret != 0) {
		FUNC4(fasttrap_cdev);
#ifndef illumos
		for (i = 0; i < fasttrap_provs.fth_nent; i++)
			FUNC13(&fasttrap_provs.fth_table[i].ftb_mtx);
		for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
			FUNC13(&fasttrap_tpoints.fth_table[i].ftb_mtx);
#endif
		FUNC7(fasttrap_provs.fth_table, fasttrap_provs.fth_nent *
		    sizeof (fasttrap_bucket_t));
		FUNC11(&fasttrap_cleanup_mtx);
		FUNC13(&fasttrap_count_mtx);
		return (ret);
	}


	/*
	 * ... and the procs hash table.
	 */
	nent = FASTTRAP_PROCS_DEFAULT_SIZE;
	if (FUNC2(nent))
		fasttrap_procs.fth_nent = nent;
	else
		fasttrap_procs.fth_nent = 1 << FUNC6(nent);
	FUNC0(fasttrap_procs.fth_nent > 0);
	fasttrap_procs.fth_mask = fasttrap_procs.fth_nent - 1;
	fasttrap_procs.fth_table = FUNC8(fasttrap_procs.fth_nent *
	    sizeof (fasttrap_bucket_t), KM_SLEEP);
#ifndef illumos
	for (i = 0; i < fasttrap_procs.fth_nent; i++)
		FUNC14(&fasttrap_procs.fth_table[i].ftb_mtx,
		    "processes bucket mtx", MUTEX_DEFAULT, NULL);

	FUNC15(&fasttrap_tp_lock, "fasttrap tracepoint");

	/*
	 * This event handler must run before kdtrace_thread_dtor() since it
	 * accesses the thread's struct kdtrace_thread.
	 */
	fasttrap_thread_dtor_tag = FUNC1(thread_dtor,
	    fasttrap_thread_dtor, NULL, EVENTHANDLER_PRI_FIRST);
#endif

	/*
	 * Install our hooks into fork(2), exec(2), and exit(2).
	 */
	dtrace_fasttrap_fork = &fasttrap_fork;
	dtrace_fasttrap_exit = &fasttrap_exec_exit;
	dtrace_fasttrap_exec = &fasttrap_exec_exit;

	(void) FUNC5("fasttrap", &fasttrap_mops, NULL,
	    &fasttrap_meta_id);

	return (0);
}