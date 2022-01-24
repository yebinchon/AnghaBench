#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct thread {TYPE_1__* td_proc; } ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_6__ {int /*<<< orphan*/  pm_active; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 void* FUNC4 (void*) ; 
 scalar_t__ cpu_vendor_id ; 
 void* curpmap ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,TYPE_2__*,void*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct thread *td)
{
	pmap_t oldpmap, pmap;
	u_int cpuid;

	oldpmap = FUNC4(curpmap);
	pmap = FUNC7(td->td_proc->p_vmspace);
	if (oldpmap == pmap) {
		if (cpu_vendor_id != CPU_VENDOR_INTEL)
			FUNC5();
		return;
	}
	cpuid = FUNC4(cpuid);
#ifdef SMP
	CPU_SET_ATOMIC(cpuid, &pmap->pm_active);
#else
	FUNC2(cpuid, &pmap->pm_active);
#endif
	FUNC6(td, pmap, cpuid);
#ifdef SMP
	CPU_CLR_ATOMIC(cpuid, &oldpmap->pm_active);
#else
	FUNC0(cpuid, &oldpmap->pm_active);
#endif
}