#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  size_t u_int ;
typedef  scalar_t__ pt_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  pm_cookie; scalar_t__ pm_l0_paddr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_l0; } ;

/* Variables and functions */
 scalar_t__ ATTR_DESCR_MASK ; 
 scalar_t__ ATTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ DPCPU_SIZE ; 
 int /*<<< orphan*/  EXFLAG_NOALLOC ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ KERNBASE ; 
 scalar_t__ L1_SHIFT ; 
 scalar_t__ L1_SIZE ; 
 scalar_t__ L2_BLOCK ; 
 scalar_t__ L2_SIZE ; 
 scalar_t__ Ln_ADDR_MASK ; 
 size_t Ln_ENTRIES ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ PMAP_MAPDEV_EARLY_SIZE ; 
 scalar_t__ PMAP_PREINIT_MAPPING_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int TCR_A1 ; 
 scalar_t__ VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 TYPE_2__* kernel_pmap ; 
 TYPE_1__ kernel_pmap_store ; 
 scalar_t__ kernel_vm_end ; 
 void* msgbufp ; 
 int /*<<< orphan*/  msgbufsize ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__* physmap ; 
 int physmap_idx ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* FUNC13 (scalar_t__,scalar_t__,size_t*,size_t*) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 void* preinit_map_va ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tcr_el1 ; 
 scalar_t__ virtual_avail ; 
 scalar_t__ virtual_end ; 

void
FUNC18(vm_offset_t l0pt, vm_offset_t l1pt, vm_paddr_t kernstart,
    vm_size_t kernlen)
{
	u_int l1_slot, l2_slot;
	pt_entry_t *l2;
	vm_offset_t va, freemempos;
	vm_offset_t dpcpu, msgbufpv;
	vm_paddr_t start_pa, pa, min_pa;
	uint64_t kern_delta;
	int i;

	/* Verify that the ASID is set through TTBR0. */
	FUNC1((FUNC3(tcr_el1) & TCR_A1) == 0,
	    ("pmap_bootstrap: TCR_EL1.A1 != 0"));

	kern_delta = KERNBASE - kernstart;

	FUNC15("pmap_bootstrap %lx %lx %lx\n", l1pt, kernstart, kernlen);
	FUNC15("%lx\n", l1pt);
	FUNC15("%lx\n", (KERNBASE >> L1_SHIFT) & Ln_ADDR_MASK);

	/* Set this early so we can use the pagetable walking functions */
	kernel_pmap_store.pm_l0 = (pd_entry_t *)l0pt;
	FUNC2(kernel_pmap);
	kernel_pmap->pm_l0_paddr = l0pt - kern_delta;
	kernel_pmap->pm_cookie = FUNC0(-1, INT_MIN);

	/* Assume the address we were loaded to is a valid physical address */
	min_pa = KERNBASE - kern_delta;

	physmap_idx = FUNC5(physmap, FUNC9(physmap));
	physmap_idx /= 2;

	/*
	 * Find the minimum physical address. physmap is sorted,
	 * but may contain empty ranges.
	 */
	for (i = 0; i < (physmap_idx * 2); i += 2) {
		if (physmap[i] == physmap[i + 1])
			continue;
		if (physmap[i] <= min_pa)
			min_pa = physmap[i];
	}

	freemempos = KERNBASE + kernlen;
	freemempos = FUNC17(freemempos, PAGE_SIZE);

	/* Create a direct map region early so we can use it for pa -> va */
	freemempos = FUNC10(l1pt, min_pa, freemempos);

	va = KERNBASE;
	start_pa = pa = KERNBASE - kern_delta;

	/*
	 * Read the page table to find out what is already mapped.
	 * This assumes we have mapped a block of memory from KERNBASE
	 * using a single L1 entry.
	 */
	l2 = FUNC13(l1pt, KERNBASE, &l1_slot, &l2_slot);

	/* Sanity check the index, KERNBASE should be the first VA */
	FUNC1(l2_slot == 0, ("The L2 index is non-zero"));

	/* Find how many pages we have mapped */
	for (; l2_slot < Ln_ENTRIES; l2_slot++) {
		if ((l2[l2_slot] & ATTR_DESCR_MASK) == 0)
			break;

		/* Check locore used L2 blocks */
		FUNC1((l2[l2_slot] & ATTR_DESCR_MASK) == L2_BLOCK,
		    ("Invalid bootstrap L2 table"));
		FUNC1((l2[l2_slot] & ~ATTR_MASK) == pa,
		    ("Incorrect PA in L2 table"));

		va += L2_SIZE;
		pa += L2_SIZE;
	}

	va = FUNC17(va, L1_SIZE);

	/* Create the l2 tables up to VM_MAX_KERNEL_ADDRESS */
	freemempos = FUNC11(l1pt, va, freemempos);
	/* And the l3 tables for the early devmap */
	freemempos = FUNC12(l1pt,
	    VM_MAX_KERNEL_ADDRESS - (PMAP_MAPDEV_EARLY_SIZE), freemempos);

	FUNC7();

#define alloc_pages(var, np)						\
	(var) = freemempos;						\
	freemempos += (np * PAGE_SIZE);					\
	memset((char *)(var), 0, ((np) * PAGE_SIZE));

	/* Allocate dynamic per-cpu area. */
	alloc_pages(dpcpu, DPCPU_SIZE / PAGE_SIZE);
	FUNC8((void *)dpcpu, 0);

	/* Allocate memory for the msgbuf, e.g. for /sbin/dmesg */
	alloc_pages(msgbufpv, FUNC16(msgbufsize) / PAGE_SIZE);
	msgbufp = (void *)msgbufpv;

	/* Reserve some VA space for early BIOS/ACPI mapping */
	preinit_map_va = FUNC17(freemempos, L2_SIZE);

	virtual_avail = preinit_map_va + PMAP_PREINIT_MAPPING_SIZE;
	virtual_avail = FUNC17(virtual_avail, L1_SIZE);
	virtual_end = VM_MAX_KERNEL_ADDRESS - (PMAP_MAPDEV_EARLY_SIZE);
	kernel_vm_end = virtual_avail;

	pa = FUNC14(l1pt, freemempos);

	FUNC6(start_pa, pa - start_pa, EXFLAG_NOALLOC);

	FUNC7();
}