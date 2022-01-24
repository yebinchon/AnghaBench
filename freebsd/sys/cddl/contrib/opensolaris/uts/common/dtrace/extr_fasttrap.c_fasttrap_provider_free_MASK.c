#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p_dtrace_probes; } ;
typedef  TYPE_1__ proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_9__ {scalar_t__ ftp_rcount; scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; int /*<<< orphan*/  ftp_cmtx; int /*<<< orphan*/  ftp_mtx; TYPE_6__* ftp_proc; int /*<<< orphan*/  ftp_retired; int /*<<< orphan*/  ftp_pid; } ;
typedef  TYPE_2__ fasttrap_provider_t ;
struct TYPE_10__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(fasttrap_provider_t *provider)
{
	pid_t pid = provider->ftp_pid;
	proc_t *p;

	/*
	 * There need to be no associated enabled probes, no consumers
	 * creating probes, and no meta providers referencing this provider.
	 */
	FUNC0(provider->ftp_rcount == 0);
	FUNC0(provider->ftp_ccount == 0);
	FUNC0(provider->ftp_mcount == 0);

	/*
	 * If this provider hasn't been retired, we need to explicitly drop the
	 * count of active providers on the associated process structure.
	 */
	if (!provider->ftp_retired) {
		FUNC2(&provider->ftp_proc->ftpc_acount);
		FUNC0(provider->ftp_proc->ftpc_acount <
		    provider->ftp_proc->ftpc_rcount);
	}

	FUNC3(provider->ftp_proc);

#ifndef illumos
	FUNC5(&provider->ftp_mtx);
	FUNC5(&provider->ftp_cmtx);
#endif
	FUNC4(provider, sizeof (fasttrap_provider_t));

	/*
	 * Decrement p_dtrace_probes on the process whose provider we're
	 * freeing. We don't have to worry about clobbering somone else's
	 * modifications to it because we have locked the bucket that
	 * corresponds to this process's hash chain in the provider hash
	 * table. Don't sweat it if we can't find the process.
	 */
	if ((p = FUNC6(pid)) == NULL) {
		return;
	}

	p->p_dtrace_probes--;
#ifndef illumos
	FUNC1(p);
#endif
}