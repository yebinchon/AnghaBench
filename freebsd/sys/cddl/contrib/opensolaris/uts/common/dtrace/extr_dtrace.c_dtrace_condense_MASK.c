#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;int /*<<< orphan*/  (* dtps_destroy ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  dtpv_arg; TYPE_1__ dtpv_pops; } ;
typedef  TYPE_2__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_10__ {struct TYPE_10__* dtpr_name; struct TYPE_10__* dtpr_func; struct TYPE_10__* dtpr_mod; int /*<<< orphan*/  dtpr_arg; int /*<<< orphan*/ * dtpr_ecb; TYPE_2__* dtpr_provider; } ;
typedef  TYPE_3__ dtrace_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int dtrace_nprobes ; 
 scalar_t__ dtrace_nullop ; 
 TYPE_3__** dtrace_probes ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 

int
FUNC9(dtrace_provider_id_t id)
{
	dtrace_provider_t *prov = (dtrace_provider_t *)id;
	int i;
	dtrace_probe_t *probe;

	/*
	 * Make sure this isn't the dtrace provider itself.
	 */
	FUNC0(prov->dtpv_pops.dtps_enable !=
	    (void (*)(void *, dtrace_id_t, void *))dtrace_nullop);

	FUNC4(&dtrace_provider_lock);
	FUNC4(&dtrace_lock);

	/*
	 * Attempt to destroy the probes associated with this provider.
	 */
	for (i = 0; i < dtrace_nprobes; i++) {
		if ((probe = dtrace_probes[i]) == NULL)
			continue;

		if (probe->dtpr_provider != prov)
			continue;

		if (probe->dtpr_ecb != NULL)
			continue;

		dtrace_probes[i] = NULL;

		FUNC1(dtrace_bymod, probe);
		FUNC1(dtrace_byfunc, probe);
		FUNC1(dtrace_byname, probe);

		prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, i + 1,
		    probe->dtpr_arg);
		FUNC3(probe->dtpr_mod, FUNC6(probe->dtpr_mod) + 1);
		FUNC3(probe->dtpr_func, FUNC6(probe->dtpr_func) + 1);
		FUNC3(probe->dtpr_name, FUNC6(probe->dtpr_name) + 1);
		FUNC3(probe, sizeof (dtrace_probe_t));
#ifdef illumos
		vmem_free(dtrace_arena, (void *)((uintptr_t)i + 1), 1);
#else
		FUNC2(dtrace_arena, i + 1);
#endif
	}

	FUNC5(&dtrace_lock);
	FUNC5(&dtrace_provider_lock);

	return (0);
}