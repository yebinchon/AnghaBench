#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int vmem_size_t ;
typedef  int /*<<< orphan*/  vmem_addr_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int u_long ;
struct pmap_preinit_mapping {scalar_t__ va; scalar_t__ pa; scalar_t__ sz; int /*<<< orphan*/  mode; } ;
struct TYPE_14__ {int* pm_pml4; } ;
struct TYPE_13__ {int /*<<< orphan*/  pvc_list; int /*<<< orphan*/  pvc_lock; } ;
struct TYPE_12__ {int ref_count; scalar_t__ phys_addr; scalar_t__ pindex; } ;

/* Variables and functions */
 int AMDID2_FMA4 ; 
 int AMDID2_XOP ; 
 int CPUID2_AESNI ; 
 int CPUID2_AVX ; 
 int CPUID2_SSE41 ; 
 int CPUID2_SSSE3 ; 
 int CPUID2_XSAVE ; 
 int CPUID_SS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KERNBASE ; 
 scalar_t__ KERNend ; 
 scalar_t__ KPTphys ; 
 int /*<<< orphan*/  LARGEMAP_MIN_ADDRESS ; 
 int LMEPML4I ; 
 int LMSPML4I ; 
 int MAXPAGESIZES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 scalar_t__ NBPDR ; 
 int NBPML4 ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PDRSHIFT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int PMAP_MEMDOM ; 
 int PMAP_PREINIT_MAPPING_COUNT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int*) ; 
 scalar_t__ VM_GUEST_NO ; 
 int FUNC9 (TYPE_1__*) ; 
 int X86_PG_A ; 
 int X86_PG_M ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int amd_feature2 ; 
 int FUNC10 (int) ; 
 scalar_t__ bootverbose ; 
 int cpu_feature ; 
 int cpu_feature2 ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 scalar_t__ dmaplimit ; 
 int /*<<< orphan*/  kernel_arena ; 
 TYPE_5__* kernel_pmap ; 
 int /*<<< orphan*/ * large_vmem ; 
 int lm_ents ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int nkpt ; 
 scalar_t__* pagesizes ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int pg_nx ; 
 int pg_ps_enabled ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int pmap_initialized ; 
 scalar_t__ FUNC16 (TYPE_5__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 struct pmap_preinit_mapping* pmap_preinit_mapping ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (int) ; 
 TYPE_3__* pv_chunks ; 
 int /*<<< orphan*/  qframe ; 
 int /*<<< orphan*/  qframe_mtx ; 
 scalar_t__ vm_guest ; 
 TYPE_1__* vm_page_array ; 
 size_t vm_page_array_size ; 
 int FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int workaround_erratum383 ; 

void
FUNC25(void)
{
	struct pmap_preinit_mapping *ppim;
	vm_page_t m, mpte;
	int error, i, ret, skz63;

	/* L1TF, reserve page @0 unconditionally */
	FUNC21(0, bootverbose);

	/* Detect bare-metal Skylake Server and Skylake-X. */
	if (vm_guest == VM_GUEST_NO && cpu_vendor_id == CPU_VENDOR_INTEL &&
	    FUNC0(cpu_id) == 0x6 && FUNC1(cpu_id) == 0x55) {
		/*
		 * Skylake-X errata SKZ63. Processor May Hang When
		 * Executing Code In an HLE Transaction Region between
		 * 40000000H and 403FFFFFH.
		 *
		 * Mark the pages in the range as preallocated.  It
		 * seems to be impossible to distinguish between
		 * Skylake Server and Skylake X.
		 */
		skz63 = 1;
		FUNC8("hw.skz63_enable", &skz63);
		if (skz63 != 0) {
			if (bootverbose)
				FUNC19("SKZ63: skipping 4M RAM starting "
				    "at physical 1G\n");
			for (i = 0; i < FUNC10(0x400000); i++) {
				ret = FUNC21(0x40000000 +
				    FUNC20(i), FALSE);
				if (!ret && bootverbose)
					FUNC19("page at %#lx already used\n",
					    0x40000000 + FUNC20(i));
			}
		}
	}

	/* IFU */
	FUNC13();

	/*
	 * Initialize the vm page array entries for the kernel pmap's
	 * page table pages.
	 */ 
	FUNC5(kernel_pmap);
	for (i = 0; i < nkpt; i++) {
		mpte = FUNC4(KPTphys + (i << PAGE_SHIFT));
		FUNC2(mpte >= vm_page_array &&
		    mpte < &vm_page_array[vm_page_array_size],
		    ("pmap_init: page table page is out of range"));
		mpte->pindex = FUNC18(KERNBASE) + i;
		mpte->phys_addr = KPTphys + (i << PAGE_SHIFT);
		mpte->ref_count = 1;

		/*
		 * Collect the page table pages that were replaced by a 2MB
		 * page in create_pagetables().  They are zero filled.
		 */
		if (i << PDRSHIFT < KERNend &&
		    FUNC16(kernel_pmap, mpte, false))
			FUNC12("pmap_init: pmap_insert_pt_page failed");
	}
	FUNC6(kernel_pmap);
	FUNC22(nkpt);

	/*
	 * If the kernel is running on a virtual machine, then it must assume
	 * that MCA is enabled by the hypervisor.  Moreover, the kernel must
	 * be prepared for the hypervisor changing the vendor and family that
	 * are reported by CPUID.  Consequently, the workaround for AMD Family
	 * 10h Erratum 383 is enabled if the processor's feature set does not
	 * include at least one feature that is only supported by older Intel
	 * or newer AMD processors.
	 */
	if (vm_guest != VM_GUEST_NO && (cpu_feature & CPUID_SS) == 0 &&
	    (cpu_feature2 & (CPUID2_SSSE3 | CPUID2_SSE41 | CPUID2_AESNI |
	    CPUID2_AVX | CPUID2_XSAVE)) == 0 && (amd_feature2 & (AMDID2_XOP |
	    AMDID2_FMA4)) == 0)
		workaround_erratum383 = 1;

	/*
	 * Are large page mappings enabled?
	 */
	FUNC8("vm.pmap.pg_ps_enabled", &pg_ps_enabled);
	if (pg_ps_enabled) {
		FUNC2(MAXPAGESIZES > 1 && pagesizes[1] == 0,
		    ("pmap_init: can't assign to pagesizes[1]"));
		pagesizes[1] = NBPDR;
	}

	/*
	 * Initialize pv chunk lists.
	 */
	for (i = 0; i < PMAP_MEMDOM; i++) {
		FUNC11(&pv_chunks[i].pvc_lock, "pmap pv chunk list", NULL, MTX_DEF);
		FUNC7(&pv_chunks[i].pvc_list);
	}
	FUNC15();

	pmap_initialized = 1;
	for (i = 0; i < PMAP_PREINIT_MAPPING_COUNT; i++) {
		ppim = pmap_preinit_mapping + i;
		if (ppim->va == 0)
			continue;
		/* Make the direct map consistent */
		if (ppim->pa < dmaplimit && ppim->pa + ppim->sz <= dmaplimit) {
			(void)FUNC14(FUNC3(ppim->pa),
			    ppim->sz, ppim->mode);
		}
		if (!bootverbose)
			continue;
		FUNC19("PPIM %u: PA=%#lx, VA=%#lx, size=%#lx, mode=%#x\n", i,
		    ppim->pa, ppim->va, ppim->sz, ppim->mode);
	}

	FUNC11(&qframe_mtx, "qfrmlk", NULL, MTX_SPIN);
	error = FUNC23(kernel_arena, PAGE_SIZE, M_BESTFIT | M_WAITOK,
	    (vmem_addr_t *)&qframe);
	if (error != 0)
		FUNC12("qframe allocation failed");

	lm_ents = 8;
	FUNC8("vm.pmap.large_map_pml4_entries", &lm_ents);
	if (lm_ents > LMEPML4I - LMSPML4I + 1)
		lm_ents = LMEPML4I - LMSPML4I + 1;
	if (bootverbose)
		FUNC19("pmap: large map %u PML4 slots (%lu GB)\n",
		    lm_ents, (u_long)lm_ents * (NBPML4 / 1024 / 1024 / 1024));
	if (lm_ents != 0) {
		large_vmem = FUNC24("large", LARGEMAP_MIN_ADDRESS,
		    (vmem_size_t)lm_ents * NBPML4, PAGE_SIZE, 0, M_WAITOK);
		if (large_vmem == NULL) {
			FUNC19("pmap: cannot create large map\n");
			lm_ents = 0;
		}
		for (i = 0; i < lm_ents; i++) {
			m = FUNC17();
			kernel_pmap->pm_pml4[LMSPML4I + i] = X86_PG_V |
			    X86_PG_RW | X86_PG_A | X86_PG_M | pg_nx |
			    FUNC9(m);
		}
	}
}