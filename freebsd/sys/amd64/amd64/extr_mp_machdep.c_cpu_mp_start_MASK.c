#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cpu_bsp; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* start_all_aps ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPI_BITMAP_VECTOR ; 
 int /*<<< orphan*/  IPI_INVLCACHE ; 
 int /*<<< orphan*/  IPI_INVLPG ; 
 int /*<<< orphan*/  IPI_INVLRNG ; 
 int /*<<< orphan*/  IPI_INVLTLB ; 
 int /*<<< orphan*/  IPI_RENDEZVOUS ; 
 int /*<<< orphan*/  IPI_STOP ; 
 int /*<<< orphan*/  IPI_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MAXCPU ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDT_SYSIGT ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  apic_id ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int boot_cpu_id ; 
 int* cpu_apic_ids ; 
 TYPE_2__* cpu_info ; 
 int /*<<< orphan*/  cpustop ; 
 int /*<<< orphan*/  cpustop_pti ; 
 int /*<<< orphan*/  cpususpend ; 
 int /*<<< orphan*/  cpususpend_pti ; 
 TYPE_1__ init_ops ; 
 int /*<<< orphan*/  invlcache ; 
 int /*<<< orphan*/  invlcache_pti ; 
 int /*<<< orphan*/  invlpg ; 
 int /*<<< orphan*/  invlpg_invpcid ; 
 int /*<<< orphan*/  invlpg_invpcid_pti ; 
 int /*<<< orphan*/  invlpg_pcid ; 
 int /*<<< orphan*/  invlpg_pcid_pti ; 
 int /*<<< orphan*/  invlpg_pti ; 
 int /*<<< orphan*/  invlrng ; 
 int /*<<< orphan*/  invlrng_invpcid ; 
 int /*<<< orphan*/  invlrng_invpcid_pti ; 
 int /*<<< orphan*/  invlrng_pcid ; 
 int /*<<< orphan*/  invlrng_pcid_pti ; 
 int /*<<< orphan*/  invlrng_pti ; 
 int /*<<< orphan*/  invltlb ; 
 int /*<<< orphan*/  invltlb_invpcid_nopti ; 
 int /*<<< orphan*/  invltlb_invpcid_pti_pti ; 
 int /*<<< orphan*/  invltlb_pcid ; 
 int /*<<< orphan*/  invltlb_pcid_pti ; 
 int /*<<< orphan*/  invltlb_pti ; 
 scalar_t__ invpcid_works ; 
 int /*<<< orphan*/  ipi_intr_bitmap_handler ; 
 int /*<<< orphan*/  ipi_intr_bitmap_handler_pti ; 
 scalar_t__ pmap_pcid_enabled ; 
 scalar_t__ pti ; 
 int /*<<< orphan*/  rendezvous ; 
 int /*<<< orphan*/  rendezvous_pti ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(void)
{
	int i;

	/* Initialize the logical ID to APIC ID table. */
	for (i = 0; i < MAXCPU; i++) {
		cpu_apic_ids[i] = -1;
	}

	/* Install an inter-CPU IPI for TLB invalidation */
	if (pmap_pcid_enabled) {
		if (invpcid_works) {
			FUNC5(IPI_INVLTLB, pti ?
			    FUNC0(invltlb_invpcid_pti_pti) :
			    FUNC0(invltlb_invpcid_nopti), SDT_SYSIGT,
			    SEL_KPL, 0);
			FUNC5(IPI_INVLPG, pti ? FUNC0(invlpg_invpcid_pti) :
			    FUNC0(invlpg_invpcid), SDT_SYSIGT, SEL_KPL, 0);
			FUNC5(IPI_INVLRNG, pti ? FUNC0(invlrng_invpcid_pti) :
			    FUNC0(invlrng_invpcid), SDT_SYSIGT, SEL_KPL, 0);
		} else {
			FUNC5(IPI_INVLTLB, pti ? FUNC0(invltlb_pcid_pti) :
			    FUNC0(invltlb_pcid), SDT_SYSIGT, SEL_KPL, 0);
			FUNC5(IPI_INVLPG, pti ? FUNC0(invlpg_pcid_pti) :
			    FUNC0(invlpg_pcid), SDT_SYSIGT, SEL_KPL, 0);
			FUNC5(IPI_INVLRNG, pti ? FUNC0(invlrng_pcid_pti) :
			    FUNC0(invlrng_pcid), SDT_SYSIGT, SEL_KPL, 0);
		}
	} else {
		FUNC5(IPI_INVLTLB, pti ? FUNC0(invltlb_pti) : FUNC0(invltlb),
		    SDT_SYSIGT, SEL_KPL, 0);
		FUNC5(IPI_INVLPG, pti ? FUNC0(invlpg_pti) : FUNC0(invlpg),
		    SDT_SYSIGT, SEL_KPL, 0);
		FUNC5(IPI_INVLRNG, pti ? FUNC0(invlrng_pti) : FUNC0(invlrng),
		    SDT_SYSIGT, SEL_KPL, 0);
	}

	/* Install an inter-CPU IPI for cache invalidation. */
	FUNC5(IPI_INVLCACHE, pti ? FUNC0(invlcache_pti) : FUNC0(invlcache),
	    SDT_SYSIGT, SEL_KPL, 0);

	/* Install an inter-CPU IPI for all-CPU rendezvous */
	FUNC5(IPI_RENDEZVOUS, pti ? FUNC0(rendezvous_pti) :
	    FUNC0(rendezvous), SDT_SYSIGT, SEL_KPL, 0);

	/* Install generic inter-CPU IPI handler */
	FUNC5(IPI_BITMAP_VECTOR, pti ? FUNC0(ipi_intr_bitmap_handler_pti) :
	    FUNC0(ipi_intr_bitmap_handler), SDT_SYSIGT, SEL_KPL, 0);

	/* Install an inter-CPU IPI for CPU stop/restart */
	FUNC5(IPI_STOP, pti ? FUNC0(cpustop_pti) : FUNC0(cpustop),
	    SDT_SYSIGT, SEL_KPL, 0);

	/* Install an inter-CPU IPI for CPU suspend/resume */
	FUNC5(IPI_SUSPEND, pti ? FUNC0(cpususpend_pti) : FUNC0(cpususpend),
	    SDT_SYSIGT, SEL_KPL, 0);

	/* Set boot_cpu_id if needed. */
	if (boot_cpu_id == -1) {
		boot_cpu_id = FUNC2(apic_id);
		cpu_info[boot_cpu_id].cpu_bsp = 1;
	} else
		FUNC1(boot_cpu_id == FUNC2(apic_id),
		    ("BSP's APIC ID doesn't match boot_cpu_id"));

	/* Probe logical/physical core configuration. */
	FUNC7();

	FUNC3();

	/* Start each Application Processor */
	init_ops.start_all_aps();

	FUNC4();
}