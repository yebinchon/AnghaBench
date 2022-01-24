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
typedef  scalar_t__ vmem_addr_t ;
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  scalar_t__ pdp_entry_t ;
typedef  scalar_t__ pd_entry_t ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int AMDID_PAGE1GB ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NBPDP ; 
 scalar_t__ NBPDR ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PDPMASK ; 
 scalar_t__ PDRMASK ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ X86_PG_A ; 
 scalar_t__ X86_PG_PS ; 
 scalar_t__ X86_PG_RW ; 
 scalar_t__ X86_PG_V ; 
 int amd_feature ; 
 scalar_t__ dmaplimit ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ pg_g ; 
 scalar_t__ pg_nx ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__* FUNC9 (scalar_t__) ; 
 scalar_t__* FUNC10 (scalar_t__) ; 
 scalar_t__* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

int
FUNC14(vm_paddr_t spa, vm_size_t len, void **addr,
    vm_memattr_t mattr)
{
	pdp_entry_t *pdpe;
	pd_entry_t *pde;
	pt_entry_t *pte;
	vm_offset_t va, inc;
	vmem_addr_t vmem_res;
	vm_paddr_t pa;
	int error;

	if (len == 0 || spa + len < spa)
		return (EINVAL);

	/* See if DMAP can serve. */
	if (spa + len <= dmaplimit) {
		va = FUNC2(spa);
		*addr = (void *)va;
		return (FUNC7(va, len, mattr));
	}

	/*
	 * No, allocate KVA.  Fit the address with best possible
	 * alignment for superpages.  Fall back to worse align if
	 * failed.
	 */
	error = ENOMEM;
	if ((amd_feature & AMDID_PAGE1GB) != 0 && FUNC12(spa + len,
	    NBPDP) >= FUNC13(spa, NBPDP) + NBPDP)
		error = FUNC8(len, NBPDP, spa & PDPMASK,
		    &vmem_res);
	if (error != 0 && FUNC12(spa + len, NBPDR) >= FUNC13(spa,
	    NBPDR) + NBPDR)
		error = FUNC8(len, NBPDR, spa & PDRMASK,
		    &vmem_res);
	if (error != 0)
		error = FUNC8(len, PAGE_SIZE, 0, &vmem_res);
	if (error != 0)
		return (error);

	/*
	 * Fill pagetable.  PG_M is not pre-set, we scan modified bits
	 * in the pagetable to minimize flushing.  No need to
	 * invalidate TLB, since we only update invalid entries.
	 */
	FUNC4(kernel_pmap);
	for (pa = spa, va = vmem_res; len > 0; pa += inc, va += inc,
	    len -= inc) {
		if ((amd_feature & AMDID_PAGE1GB) != 0 && len >= NBPDP &&
		    (pa & PDPMASK) == 0 && (va & PDPMASK) == 0) {
			pdpe = FUNC10(va);
			FUNC1(*pdpe == 0);
			*pdpe = pa | pg_g | X86_PG_PS | X86_PG_RW |
			    X86_PG_V | X86_PG_A | pg_nx |
			    FUNC6(kernel_pmap, mattr, TRUE);
			inc = NBPDP;
		} else if (len >= NBPDR && (pa & PDRMASK) == 0 &&
		    (va & PDRMASK) == 0) {
			pde = FUNC9(va);
			FUNC1(*pde == 0);
			*pde = pa | pg_g | X86_PG_PS | X86_PG_RW |
			    X86_PG_V | X86_PG_A | pg_nx |
			    FUNC6(kernel_pmap, mattr, TRUE);
			FUNC3(FUNC0((uintptr_t)pde))->
			    ref_count++;
			inc = NBPDR;
		} else {
			pte = FUNC11(va);
			FUNC1(*pte == 0);
			*pte = pa | pg_g | X86_PG_RW | X86_PG_V |
			    X86_PG_A | pg_nx | FUNC6(kernel_pmap,
			    mattr, FALSE);
			FUNC3(FUNC0((uintptr_t)pte))->
			    ref_count++;
			inc = PAGE_SIZE;
		}
	}
	FUNC5(kernel_pmap);
	FUNC1(len == 0);

	*addr = (void *)vmem_res;
	return (0);
}