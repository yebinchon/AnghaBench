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
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  system_mtx; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L1_SHIFT ; 
 int L1_TABLE ; 
 int L2_OFFSET ; 
 int L2_SHIFT ; 
 int L2_SIZE ; 
 int L2_TABLE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_ZERO ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 TYPE_3__* kernel_map ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int kernel_vm_end ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (TYPE_3__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC14(vm_offset_t addr)
{
	vm_paddr_t paddr;
	vm_page_t nkpg;
	pd_entry_t *l0, *l1, *l2;

	FUNC3(&kernel_map->system_mtx, MA_OWNED);

	addr = FUNC11(addr, L2_SIZE);
	if (addr - 1 >= FUNC12(kernel_map))
		addr = FUNC12(kernel_map);
	while (kernel_vm_end < addr) {
		l0 = FUNC5(kernel_pmap, kernel_vm_end);
		FUNC0(FUNC8(l0) != 0,
		    ("pmap_growkernel: No level 0 kernel entry"));

		l1 = FUNC6(l0, kernel_vm_end);
		if (FUNC8(l1) == 0) {
			/* We need a new PDP entry */
			nkpg = FUNC13(NULL, kernel_vm_end >> L1_SHIFT,
			    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ |
			    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
			if (nkpg == NULL)
				FUNC4("pmap_growkernel: no memory to grow kernel");
			if ((nkpg->flags & PG_ZERO) == 0)
				FUNC10(nkpg);
			/* See the dmb() in _pmap_alloc_l3(). */
			FUNC2(ishst);
			paddr = FUNC1(nkpg);
			FUNC9(l1, paddr | L1_TABLE);
			continue; /* try again */
		}
		l2 = FUNC7(l1, kernel_vm_end);
		if (FUNC8(l2) != 0) {
			kernel_vm_end = (kernel_vm_end + L2_SIZE) & ~L2_OFFSET;
			if (kernel_vm_end - 1 >= FUNC12(kernel_map)) {
				kernel_vm_end = FUNC12(kernel_map);
				break;
			}
			continue;
		}

		nkpg = FUNC13(NULL, kernel_vm_end >> L2_SHIFT,
		    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED |
		    VM_ALLOC_ZERO);
		if (nkpg == NULL)
			FUNC4("pmap_growkernel: no memory to grow kernel");
		if ((nkpg->flags & PG_ZERO) == 0)
			FUNC10(nkpg);
		/* See the dmb() in _pmap_alloc_l3(). */
		FUNC2(ishst);
		paddr = FUNC1(nkpg);
		FUNC9(l2, paddr | L2_TABLE);

		kernel_vm_end = (kernel_vm_end + L2_SIZE) & ~L2_OFFSET;
		if (kernel_vm_end - 1 >= FUNC12(kernel_map)) {
			kernel_vm_end = FUNC12(kernel_map);
			break;
		}
	}
}