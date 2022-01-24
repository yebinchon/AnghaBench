#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* ftp_next; int /*<<< orphan*/  ftp_provid; int /*<<< orphan*/  ftp_mtx; } ;
typedef  TYPE_1__ fasttrap_provider_t ;
struct TYPE_9__ {int /*<<< orphan*/  ftb_mtx; int /*<<< orphan*/  ftb_data; } ;
typedef  TYPE_2__ fasttrap_bucket_t ;
struct TYPE_12__ {int fth_nent; TYPE_2__* fth_table; } ;
struct TYPE_11__ {int fth_nent; TYPE_2__* fth_table; } ;
struct TYPE_10__ {int fth_nent; TYPE_2__* fth_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACE_METAPROVNONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dtrace_fasttrap_exec ; 
 int /*<<< orphan*/ * dtrace_fasttrap_exit ; 
 int /*<<< orphan*/ * dtrace_fasttrap_fork ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasttrap_cdev ; 
 int /*<<< orphan*/  fasttrap_cleanup_cv ; 
 int fasttrap_cleanup_drain ; 
 int /*<<< orphan*/  fasttrap_cleanup_mtx ; 
 int /*<<< orphan*/ * fasttrap_cleanup_proc ; 
 int /*<<< orphan*/  fasttrap_count_mtx ; 
 int /*<<< orphan*/  fasttrap_exec_exit ; 
 int /*<<< orphan*/  fasttrap_fork ; 
 scalar_t__ fasttrap_meta_id ; 
 int /*<<< orphan*/  fasttrap_mops ; 
 scalar_t__ fasttrap_pid_count ; 
 TYPE_7__ fasttrap_procs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_5__ fasttrap_provs ; 
 int /*<<< orphan*/  fasttrap_thread_dtor_tag ; 
 int /*<<< orphan*/  fasttrap_tp_lock ; 
 TYPE_4__ fasttrap_tpoints ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_dtor ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(void)
{
	int i, fail = 0;

	/*
	 * Unregister the meta-provider to make sure no new fasttrap-
	 * managed providers come along while we're trying to close up
	 * shop. If we fail to detach, we'll need to re-register as a
	 * meta-provider. We can fail to unregister as a meta-provider
	 * if providers we manage still exist.
	 */
	if (fasttrap_meta_id != DTRACE_METAPROVNONE &&
	    FUNC4(fasttrap_meta_id) != 0)
		return (-1);

	/*
	 * Iterate over all of our providers. If there's still a process
	 * that corresponds to that pid, fail to detach.
	 */
	for (i = 0; i < fasttrap_provs.fth_nent; i++) {
		fasttrap_provider_t **fpp, *fp;
		fasttrap_bucket_t *bucket = &fasttrap_provs.fth_table[i];

		FUNC12(&bucket->ftb_mtx);
		fpp = (fasttrap_provider_t **)&bucket->ftb_data;
		while ((fp = *fpp) != NULL) {
			/*
			 * Acquire and release the lock as a simple way of
			 * waiting for any other consumer to finish with
			 * this provider. A thread must first acquire the
			 * bucket lock so there's no chance of another thread
			 * blocking on the provider's lock.
			 */
			FUNC12(&fp->ftp_mtx);
			FUNC13(&fp->ftp_mtx);

			if (FUNC5(fp->ftp_provid) != 0) {
				fail = 1;
				fpp = &fp->ftp_next;
			} else {
				*fpp = fp->ftp_next;
				FUNC6(fp);
			}
		}

		FUNC13(&bucket->ftb_mtx);
	}

	if (fail) {
		(void) FUNC3("fasttrap", &fasttrap_mops, NULL,
		    &fasttrap_meta_id);

		return (-1);
	}

	/*
	 * Stop new processes from entering these hooks now, before the
	 * fasttrap_cleanup thread runs.  That way all processes will hopefully
	 * be out of these hooks before we free fasttrap_provs.fth_table
	 */
	FUNC0(dtrace_fasttrap_fork == &fasttrap_fork);
	dtrace_fasttrap_fork = NULL;

	FUNC0(dtrace_fasttrap_exec == &fasttrap_exec_exit);
	dtrace_fasttrap_exec = NULL;

	FUNC0(dtrace_fasttrap_exit == &fasttrap_exec_exit);
	dtrace_fasttrap_exit = NULL;

	FUNC9(&fasttrap_cleanup_mtx);
	fasttrap_cleanup_drain = 1;
	/* Wait for the cleanup thread to finish up and signal us. */
	FUNC15(&fasttrap_cleanup_cv);
	FUNC10(&fasttrap_cleanup_drain, &fasttrap_cleanup_mtx, 0, "ftcld",
	    0);
	fasttrap_cleanup_proc = NULL;
	FUNC8(&fasttrap_cleanup_mtx);

#ifdef DEBUG
	mutex_enter(&fasttrap_count_mtx);
	ASSERT(fasttrap_pid_count == 0);
	mutex_exit(&fasttrap_count_mtx);
#endif

#ifndef illumos
	FUNC1(thread_dtor, fasttrap_thread_dtor_tag);

	for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
		FUNC11(&fasttrap_tpoints.fth_table[i].ftb_mtx);
	for (i = 0; i < fasttrap_provs.fth_nent; i++)
		FUNC11(&fasttrap_provs.fth_table[i].ftb_mtx);
	for (i = 0; i < fasttrap_procs.fth_nent; i++)
		FUNC11(&fasttrap_procs.fth_table[i].ftb_mtx);
#endif
	FUNC7(fasttrap_tpoints.fth_table,
	    fasttrap_tpoints.fth_nent * sizeof (fasttrap_bucket_t));
	fasttrap_tpoints.fth_nent = 0;

	FUNC7(fasttrap_provs.fth_table,
	    fasttrap_provs.fth_nent * sizeof (fasttrap_bucket_t));
	fasttrap_provs.fth_nent = 0;

	FUNC7(fasttrap_procs.fth_table,
	    fasttrap_procs.fth_nent * sizeof (fasttrap_bucket_t));
	fasttrap_procs.fth_nent = 0;

#ifndef illumos
	FUNC2(fasttrap_cdev);
	FUNC11(&fasttrap_count_mtx);
	FUNC14(&fasttrap_tp_lock);
#endif

	return (0);
}