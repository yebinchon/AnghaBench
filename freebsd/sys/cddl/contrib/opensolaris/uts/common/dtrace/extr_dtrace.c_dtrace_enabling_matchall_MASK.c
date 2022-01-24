#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* dten_vstate; struct TYPE_10__* dten_next; } ;
typedef  TYPE_4__ dtrace_enabling_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_9__ {TYPE_2__* dtvs_state; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dcr_cred; } ;
struct TYPE_8__ {TYPE_1__ dts_cred; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_4__* dtrace_retained ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
	dtrace_enabling_t *enab;

	FUNC4(&cpu_lock);
	FUNC4(&dtrace_lock);

	/*
	 * Iterate over all retained enablings to see if any probes match
	 * against them.  We only perform this operation on enablings for which
	 * we have sufficient permissions by virtue of being in the global zone
	 * or in the same zone as the DTrace client.  Because we can be called
	 * after dtrace_detach() has been called, we cannot assert that there
	 * are retained enablings.  We can safely load from dtrace_retained,
	 * however:  the taskq_destroy() at the end of dtrace_detach() will
	 * block pending our completion.
	 */
	for (enab = dtrace_retained; enab != NULL; enab = enab->dten_next) {
#ifdef illumos
		cred_t *cr = enab->dten_vstate->dtvs_state->dts_cred.dcr_cred;

		if (INGLOBALZONE(curproc) ||
		    cr != NULL && getzoneid() == crgetzoneid(cr))
#endif
			(void) FUNC2(enab, NULL);
	}

	FUNC5(&dtrace_lock);
	FUNC5(&cpu_lock);
}