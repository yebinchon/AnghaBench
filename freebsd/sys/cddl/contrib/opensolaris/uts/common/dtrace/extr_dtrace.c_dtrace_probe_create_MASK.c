#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_7__ {int dtpr_id; int dtpr_aframes; int /*<<< orphan*/ * dtpr_provider; void* dtpr_arg; void* dtpr_name; void* dtpr_func; void* dtpr_mod; scalar_t__ dtpr_gen; } ;
typedef  TYPE_1__ dtrace_probe_t ;
typedef  int dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int VM_BESTFIT ; 
 int VM_SLEEP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,TYPE_1__**,size_t) ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int dtrace_nprobes ; 
 int /*<<< orphan*/  dtrace_probegen ; 
 TYPE_1__** dtrace_probes ; 
 int /*<<< orphan*/ * dtrace_provider ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,size_t) ; 
 void* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int) ; 

dtrace_id_t
FUNC13(dtrace_provider_id_t prov, const char *mod,
    const char *func, const char *name, int aframes, void *arg)
{
	dtrace_probe_t *probe, **probes;
	dtrace_provider_t *provider = (dtrace_provider_t *)prov;
	dtrace_id_t id;

	if (provider == dtrace_provider) {
		FUNC0(FUNC1(&dtrace_lock));
	} else {
		FUNC10(&dtrace_lock);
	}

#ifdef illumos
	id = (dtrace_id_t)(uintptr_t)vmem_alloc(dtrace_arena, 1,
	    VM_BESTFIT | VM_SLEEP);
#else
	id = FUNC2(dtrace_arena);
#endif
	probe = FUNC9(sizeof (dtrace_probe_t), KM_SLEEP);

	probe->dtpr_id = id;
	probe->dtpr_gen = dtrace_probegen++;
	probe->dtpr_mod = FUNC6(mod);
	probe->dtpr_func = FUNC6(func);
	probe->dtpr_name = FUNC6(name);
	probe->dtpr_arg = arg;
	probe->dtpr_aframes = aframes;
	probe->dtpr_provider = provider;

	FUNC4(dtrace_bymod, probe);
	FUNC4(dtrace_byfunc, probe);
	FUNC4(dtrace_byname, probe);

	if (id - 1 >= dtrace_nprobes) {
		size_t osize = dtrace_nprobes * sizeof (dtrace_probe_t *);
		size_t nsize = osize << 1;

		if (nsize == 0) {
			FUNC0(osize == 0);
			FUNC0(dtrace_probes == NULL);
			nsize = sizeof (dtrace_probe_t *);
		}

		probes = FUNC9(nsize, KM_SLEEP);

		if (dtrace_probes == NULL) {
			FUNC0(osize == 0);
			dtrace_probes = probes;
			dtrace_nprobes = 1;
		} else {
			dtrace_probe_t **oprobes = dtrace_probes;

			FUNC3(oprobes, probes, osize);
			FUNC5();
			dtrace_probes = probes;

			FUNC7();

			/*
			 * All CPUs are now seeing the new probes array; we can
			 * safely free the old array.
			 */
			FUNC8(oprobes, osize);
			dtrace_nprobes <<= 1;
		}

		FUNC0(id - 1 < dtrace_nprobes);
	}

	FUNC0(dtrace_probes[id - 1] == NULL);
	dtrace_probes[id - 1] = probe;

	if (provider != dtrace_provider)
		FUNC11(&dtrace_lock);

	return (id);
}