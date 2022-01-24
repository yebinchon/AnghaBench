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
typedef  int uint64_t ;
typedef  int u_short ;
typedef  int u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_RESET ; 
 int /*<<< orphan*/  BIOS_WARM ; 
 int /*<<< orphan*/  CMOS_DATA ; 
 int /*<<< orphan*/  CMOS_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DPCPU_SIZE ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int PG_PS ; 
 int PG_RW ; 
 int PG_U ; 
 int PG_V ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ WARMBOOT_OFF ; 
 scalar_t__ WARMBOOT_SEG ; 
 int WARMBOOT_TARGET ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int bootAP ; 
 int /*<<< orphan*/  bootMP_size ; 
 char* bootSTK ; 
 int boot_address ; 
 void** bootstacks ; 
 int* cpu_apic_ids ; 
 char* dbg_stack ; 
 char* doublefault_stack ; 
 void* dpcpu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int kstack_pages ; 
 char* mce_stack ; 
 int mp_naps ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int mptramp_pagetables ; 
 int /*<<< orphan*/  mptramp_start ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* nmi_stack ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int vm_ndomains ; 

int
FUNC13(void)
{
	u_int64_t *pt4, *pt3, *pt2;
	u_int32_t mpbioswarmvec;
	int apic_id, cpu, domain, i;
	u_char mpbiosreason;

	FUNC9(&ap_boot_mtx, "ap boot", NULL, MTX_SPIN);

	/* copy the AP 1st level boot code */
	FUNC4(mptramp_start, (void *)FUNC2(boot_address), bootMP_size);

	/* Locate the page tables, they'll be below the trampoline */
	pt4 = (uint64_t *)FUNC2(mptramp_pagetables);
	pt3 = pt4 + (PAGE_SIZE) / sizeof(u_int64_t);
	pt2 = pt3 + (PAGE_SIZE) / sizeof(u_int64_t);

	/* Create the initial 1GB replicated page tables */
	for (i = 0; i < 512; i++) {
		/* Each slot of the level 4 pages points to the same level 3 page */
		pt4[i] = (u_int64_t)(uintptr_t)(mptramp_pagetables + PAGE_SIZE);
		pt4[i] |= PG_V | PG_RW | PG_U;

		/* Each slot of the level 3 pages points to the same level 2 page */
		pt3[i] = (u_int64_t)(uintptr_t)(mptramp_pagetables + (2 * PAGE_SIZE));
		pt3[i] |= PG_V | PG_RW | PG_U;

		/* The level 2 page slots are mapped with 2MB pages for 1GB. */
		pt2[i] = i * (2 * 1024 * 1024);
		pt2[i] |= PG_V | PG_RW | PG_PS | PG_U;
	}

	/* save the current value of the warm-start vector */
	mpbioswarmvec = *((u_int32_t *) WARMBOOT_OFF);
	FUNC10(CMOS_REG, BIOS_RESET);
	mpbiosreason = FUNC5(CMOS_DATA);

	/* setup a vector to our boot code */
	*((volatile u_short *) WARMBOOT_OFF) = WARMBOOT_TARGET;
	*((volatile u_short *) WARMBOOT_SEG) = (boot_address >> 4);
	FUNC10(CMOS_REG, BIOS_RESET);
	FUNC10(CMOS_DATA, BIOS_WARM);	/* 'warm-start' */

	/* Relocate pcpu areas to the correct domain. */
#ifdef NUMA
	if (vm_ndomains > 1)
		for (cpu = 1; cpu < mp_ncpus; cpu++) {
			apic_id = cpu_apic_ids[cpu];
			domain = acpi_pxm_get_cpu_locality(apic_id);
			mp_realloc_pcpu(cpu, domain);
		}
#endif

	/* start each AP */
	domain = 0;
	for (cpu = 1; cpu < mp_ncpus; cpu++) {
		apic_id = cpu_apic_ids[cpu];
#ifdef NUMA
		if (vm_ndomains > 1)
			domain = acpi_pxm_get_cpu_locality(apic_id);
#endif
		/* allocate and set up an idle stack data page */
		bootstacks[cpu] = (void *)FUNC6(kstack_pages * PAGE_SIZE,
		    M_WAITOK | M_ZERO);
		doublefault_stack = (char *)FUNC6(PAGE_SIZE, M_WAITOK |
		    M_ZERO);
		mce_stack = (char *)FUNC6(PAGE_SIZE, M_WAITOK | M_ZERO);
		nmi_stack = (char *)FUNC7(
		    FUNC1(domain), PAGE_SIZE, M_WAITOK | M_ZERO);
		dbg_stack = (char *)FUNC7(
		    FUNC1(domain), PAGE_SIZE, M_WAITOK | M_ZERO);
		dpcpu = (void *)FUNC7(FUNC1(domain),
		    DPCPU_SIZE, M_WAITOK | M_ZERO);

		bootSTK = (char *)bootstacks[cpu] +
		    kstack_pages * PAGE_SIZE - 8;
		bootAP = cpu;

		/* attempt to start the Application Processor */
		if (!FUNC12(apic_id)) {
			/* restore the warmstart vector */
			*(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;
			FUNC11("AP #%d (PHY# %d) failed!", cpu, apic_id);
		}

		FUNC0(cpu, &all_cpus);	/* record AP in CPU map */
	}

	/* restore the warmstart vector */
	*(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;

	FUNC10(CMOS_REG, BIOS_RESET);
	FUNC10(CMOS_DATA, mpbiosreason);

	/* number of APs actually started */
	return (mp_naps);
}