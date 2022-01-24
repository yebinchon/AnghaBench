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
typedef  int uint32_t ;
typedef  size_t u_int ;
struct trapframe {int dummy; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int PMU_OVSR_C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ccnt_hi ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC4 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
#ifdef HWPMC_HOOKS
	struct trapframe *tf;
#endif
	uint32_t r;
#if defined(__arm__) && (__ARM_ARCH > 6)
	u_int cpu;

	cpu = PCPU_GET(cpuid);

	r = cp15_pmovsr_get();
	if (r & PMU_OVSR_C) {
		atomic_add_32(&ccnt_hi[cpu], 1);
		/* Clear the event. */
		r &= ~PMU_OVSR_C;
		cp15_pmovsr_set(PMU_OVSR_C);
	}
#else
	r = 1;
#endif

#ifdef HWPMC_HOOKS
	/* Only call into the HWPMC framework if we know there is work. */
	if (r != 0 && pmc_intr) {
		tf = arg;
		(*pmc_intr)(tf);
	}
#endif

	return (FILTER_HANDLED);
}