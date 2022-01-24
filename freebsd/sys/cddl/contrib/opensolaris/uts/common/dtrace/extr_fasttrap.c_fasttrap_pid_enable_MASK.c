#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ p_stat; int p_flag; int /*<<< orphan*/  p_lock; TYPE_13__* p_parent; } ;
typedef  TYPE_2__ proc_t ;
struct TYPE_18__ {int ftp_enabled; scalar_t__ ftp_id; int ftp_ntps; int /*<<< orphan*/  ftp_pid; TYPE_1__* ftp_prov; } ;
typedef  TYPE_3__ fasttrap_probe_t ;
typedef  scalar_t__ dtrace_id_t ;
struct TYPE_16__ {scalar_t__ ftp_retired; int /*<<< orphan*/  ftp_mtx; int /*<<< orphan*/  ftp_rcount; } ;
struct TYPE_15__ {int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FASTTRAP_ENABLE_FAIL ; 
 int FASTTRAP_ENABLE_PARTIAL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int PGET_HOLD ; 
 int PGET_NOTWEXIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int SFORKING ; 
 scalar_t__ SIDL ; 
 int SVFORK ; 
 int /*<<< orphan*/  cpu_lock ; 
 TYPE_13__* curproc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,TYPE_2__**) ; 
 int /*<<< orphan*/  pidlock ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14(void *arg, dtrace_id_t id, void *parg)
{
	fasttrap_probe_t *probe = parg;
	proc_t *p = NULL;
	int i, rc;

	FUNC0(probe != NULL);
	FUNC0(!probe->ftp_enabled);
	FUNC0(id == probe->ftp_id);
#ifdef illumos
	ASSERT(MUTEX_HELD(&cpu_lock));
#endif

	/*
	 * Increment the count of enabled probes on this probe's provider;
	 * the provider can't go away while the probe still exists. We
	 * must increment this even if we aren't able to properly enable
	 * this probe.
	 */
	FUNC7(&probe->ftp_prov->ftp_mtx);
	probe->ftp_prov->ftp_rcount++;
	FUNC8(&probe->ftp_prov->ftp_mtx);

	/*
	 * If this probe's provider is retired (meaning it was valid in a
	 * previously exec'ed incarnation of this address space), bail out. The
	 * provider can't go away while we're in this code path.
	 */
	if (probe->ftp_prov->ftp_retired)
		return;

	/*
	 * If we can't find the process, it may be that we're in the context of
	 * a fork in which the traced process is being born and we're copying
	 * USDT probes. Otherwise, the process is gone so bail.
	 */
#ifdef illumos
	if ((p = sprlock(probe->ftp_pid)) == NULL) {
		if ((curproc->p_flag & SFORKING) == 0)
			return;

		mutex_enter(&pidlock);
		p = prfind(probe->ftp_pid);

		if (p == NULL) {
			/*
			 * So it's not that the target process is being born,
			 * it's that it isn't there at all (and we simply
			 * happen to be forking).  Anyway, we know that the
			 * target is definitely gone, so bail out.
			 */
			mutex_exit(&pidlock);
			return (0);
		}

		/*
		 * Confirm that curproc is indeed forking the process in which
		 * we're trying to enable probes.
		 */
		ASSERT(p->p_parent == curproc);
		ASSERT(p->p_stat == SIDL);

		mutex_enter(&p->p_lock);
		mutex_exit(&pidlock);

		sprlock_proc(p);
	}

	ASSERT(!(p->p_flag & SVFORK));
	mutex_exit(&p->p_lock);
#else
	if (FUNC9(probe->ftp_pid, PGET_HOLD | PGET_NOTWEXIT, &p) != 0)
		return;
#endif

	/*
	 * We have to enable the trap entry point before any user threads have
	 * the chance to execute the trap instruction we're about to place
	 * in their process's text.
	 */
	FUNC4();

	/*
	 * Enable all the tracepoints and add this probe's id to each
	 * tracepoint's list of active probes.
	 */
	for (i = 0; i < probe->ftp_ntps; i++) {
		if ((rc = FUNC6(p, probe, i)) != 0) {
			/*
			 * If enabling the tracepoint failed completely,
			 * we don't have to disable it; if the failure
			 * was only partial we must disable it.
			 */
			if (rc == FASTTRAP_ENABLE_FAIL)
				i--;
			else
				FUNC0(rc == FASTTRAP_ENABLE_PARTIAL);

			/*
			 * Back up and pull out all the tracepoints we've
			 * created so far for this probe.
			 */
			while (i >= 0) {
				FUNC5(p, probe, i);
				i--;
			}

#ifdef illumos
			mutex_enter(&p->p_lock);
			sprunlock(p);
#else
			FUNC2(p);
#endif

			/*
			 * Since we're not actually enabling this probe,
			 * drop our reference on the trap table entry.
			 */
			FUNC3();
			return;
		}
	}
#ifdef illumos
	mutex_enter(&p->p_lock);
	sprunlock(p);
#else
	FUNC2(p);
#endif

	probe->ftp_enabled = 1;
}