#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  system_mtx; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int KERNBASE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int NBPDR ; 
 int PDPSHIFT ; 
 int PDRMASK ; 
 int PG_ZERO ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC0 (TYPE_1__*) ; 
 int X86_PG_A ; 
 int X86_PG_M ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 TYPE_3__* kernel_map ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int kernel_vm_end ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int nkpt ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int FUNC4 (int) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int* FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (TYPE_3__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC11(vm_offset_t addr)
{
	vm_paddr_t paddr;
	vm_page_t nkpg;
	pd_entry_t *pde, newpdir;
	pdp_entry_t *pdpe;

	FUNC1(&kernel_map->system_mtx, MA_OWNED);

	/*
	 * Return if "addr" is within the range of kernel page table pages
	 * that were preallocated during pmap bootstrap.  Moreover, leave
	 * "kernel_vm_end" and the kernel page table as they were.
	 *
	 * The correctness of this action is based on the following
	 * argument: vm_map_insert() allocates contiguous ranges of the
	 * kernel virtual address space.  It calls this function if a range
	 * ends after "kernel_vm_end".  If the kernel is mapped between
	 * "kernel_vm_end" and "addr", then the range cannot begin at
	 * "kernel_vm_end".  In fact, its beginning address cannot be less
	 * than the kernel.  Thus, there is no immediate need to allocate
	 * any new kernel page table pages between "kernel_vm_end" and
	 * "KERNBASE".
	 */
	if (KERNBASE < addr && addr <= KERNBASE + nkpt * NBPDR)
		return;

	addr = FUNC8(addr, NBPDR);
	if (addr - 1 >= FUNC9(kernel_map))
		addr = FUNC9(kernel_map);
	while (kernel_vm_end < addr) {
		pdpe = FUNC5(kernel_pmap, kernel_vm_end);
		if ((*pdpe & X86_PG_V) == 0) {
			/* We need a new PDP entry */
			nkpg = FUNC10(NULL, kernel_vm_end >> PDPSHIFT,
			    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ |
			    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
			if (nkpg == NULL)
				FUNC2("pmap_growkernel: no memory to grow kernel");
			if ((nkpg->flags & PG_ZERO) == 0)
				FUNC7(nkpg);
			paddr = FUNC0(nkpg);
			*pdpe = (pdp_entry_t)(paddr | X86_PG_V | X86_PG_RW |
			    X86_PG_A | X86_PG_M);
			continue; /* try again */
		}
		pde = FUNC6(pdpe, kernel_vm_end);
		if ((*pde & X86_PG_V) != 0) {
			kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
			if (kernel_vm_end - 1 >= FUNC9(kernel_map)) {
				kernel_vm_end = FUNC9(kernel_map);
				break;                       
			}
			continue;
		}

		nkpg = FUNC10(NULL, FUNC4(kernel_vm_end),
		    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED |
		    VM_ALLOC_ZERO);
		if (nkpg == NULL)
			FUNC2("pmap_growkernel: no memory to grow kernel");
		if ((nkpg->flags & PG_ZERO) == 0)
			FUNC7(nkpg);
		paddr = FUNC0(nkpg);
		newpdir = paddr | X86_PG_V | X86_PG_RW | X86_PG_A | X86_PG_M;
		FUNC3(pde, newpdir);

		kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
		if (kernel_vm_end - 1 >= FUNC9(kernel_map)) {
			kernel_vm_end = FUNC9(kernel_map);
			break;                       
		}
	}
}