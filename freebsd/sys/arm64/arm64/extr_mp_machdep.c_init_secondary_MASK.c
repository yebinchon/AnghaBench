#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct pcpu {int /*<<< orphan*/  pc_curpmap; TYPE_1__* pc_idlethread; int /*<<< orphan*/  pc_curpcb; TYPE_1__* pc_curthread; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {int /*<<< orphan*/  td_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct pcpu* __pcpu ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 int /*<<< orphan*/  aps_ready ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  idlethread ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ mp_ncpus ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ smp_cpus ; 
 int /*<<< orphan*/  smp_started ; 
 int /*<<< orphan*/  ttbr0_el1 ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  vmspace0 ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void
FUNC19(uint64_t cpu)
{
	struct pcpu *pcpup;
	pmap_t pmap0;

	pcpup = &__pcpu[cpu];
	/*
	 * Set the pcpu pointer with a backup in tpidr_el1 to be
	 * loaded when entering the kernel from userland.
	 */
	__asm __volatile(
	    "mov x18, %0 \n"
	    "msr tpidr_el1, %0" :: "r"(pcpup));

	/* Spin until the BSP releases the APs */
	while (!aps_ready)
		__asm __volatile("wfe");

	/* Initialize curthread */
	FUNC0(FUNC1(idlethread) != NULL, ("no idle thread"));
	pcpup->pc_curthread = pcpup->pc_idlethread;
	pcpup->pc_curpcb = pcpup->pc_idlethread->td_pcb;

	/* Initialize curpmap to match TTBR0's current setting. */
	pmap0 = FUNC18(&vmspace0);
	FUNC0(FUNC15(pmap0) == FUNC2(ttbr0_el1),
	    ("pmap0 doesn't match cpu %ld's ttbr0", cpu));
	pcpup->pc_curpmap = pmap0;

	/*
	 * Identify current CPU. This is necessary to setup
	 * affinity registers and to provide support for
	 * runtime chip identification.
	 */
	FUNC7();
	FUNC8();

	FUNC10();

	/* Start per-CPU event timers. */
	FUNC5();

#ifdef VFP
	vfp_init();
#endif

	FUNC6();
	FUNC13();

	/* Enable interrupts */
	FUNC9();

	FUNC11(&ap_boot_mtx);

	FUNC3(&smp_cpus, 1);

	if (smp_cpus == mp_ncpus) {
		/* enable IPI's, tlb shootdown, freezes etc */
		FUNC4(&smp_started, 1);
	}

	FUNC12(&ap_boot_mtx);

	/* Enter the scheduler */
	FUNC16(NULL);

	FUNC14("scheduler returned us to init_secondary");
	/* NOTREACHED */
}