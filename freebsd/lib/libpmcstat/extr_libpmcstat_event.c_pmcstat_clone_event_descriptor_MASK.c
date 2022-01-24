#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pmcstat_ev {int ev_cpu; int /*<<< orphan*/ * ev_spec; int /*<<< orphan*/  ev_saved; int /*<<< orphan*/  ev_pmcid; int /*<<< orphan*/ * ev_name; int /*<<< orphan*/  ev_mode; int /*<<< orphan*/  ev_flags; int /*<<< orphan*/  ev_cumulative; int /*<<< orphan*/  ev_count; } ;
struct pmcstat_args {int /*<<< orphan*/  pa_events; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pmcstat_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ev_next ; 
 struct pmcstat_ev* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcstat_ev*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct pmcstat_ev *ev, const cpuset_t *cpumask,
    struct pmcstat_args *args)
{
	int cpu;
	struct pmcstat_ev *ev_clone;

	for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
		if (!FUNC0(cpu, cpumask))
			continue;

		if ((ev_clone = FUNC3(sizeof(*ev_clone))) == NULL)
			FUNC2(EX_SOFTWARE, "ERROR: Out of memory");
		(void) FUNC4(ev_clone, 0, sizeof(*ev_clone));

		ev_clone->ev_count = ev->ev_count;
		ev_clone->ev_cpu   = cpu;
		ev_clone->ev_cumulative = ev->ev_cumulative;
		ev_clone->ev_flags = ev->ev_flags;
		ev_clone->ev_mode  = ev->ev_mode;
		ev_clone->ev_name  = FUNC5(ev->ev_name);
		if (ev_clone->ev_name == NULL)
			FUNC2(EX_SOFTWARE, "ERROR: Out of memory");
		ev_clone->ev_pmcid = ev->ev_pmcid;
		ev_clone->ev_saved = ev->ev_saved;
		ev_clone->ev_spec  = FUNC5(ev->ev_spec);
		if (ev_clone->ev_spec == NULL)
			FUNC2(EX_SOFTWARE, "ERROR: Out of memory");

		FUNC1(&args->pa_events, ev_clone, ev_next);
	}
}