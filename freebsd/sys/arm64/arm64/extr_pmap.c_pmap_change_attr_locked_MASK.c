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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ATTR_IDX_MASK ; 
 int ATTR_XN ; 
 int DEVICE_MEMORY ; 
 int EINVAL ; 
 scalar_t__ L1_OFFSET ; 
 scalar_t__ L1_SIZE ; 
 scalar_t__ L2_OFFSET ; 
 scalar_t__ L2_SIZE ; 
 int /*<<< orphan*/  L3_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ VM_MAX_KERNEL_ADDRESS ; 
 int VM_MEMATTR_UNCACHEABLE ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int* FUNC7 (int*,scalar_t__) ; 
 int* FUNC8 (int*,scalar_t__) ; 
 int FUNC9 (int*) ; 
 int* FUNC10 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static int
FUNC14(vm_offset_t va, vm_size_t size, int mode)
{
	vm_offset_t base, offset, tmpva;
	pt_entry_t l3, *pte, *newpte;
	int lvl;

	FUNC1(kernel_pmap, MA_OWNED);
	base = FUNC13(va);
	offset = va & PAGE_MASK;
	size = FUNC12(offset + size);

	if (!FUNC2(base) &&
	    !(base >= VM_MIN_KERNEL_ADDRESS && base < VM_MAX_KERNEL_ADDRESS))
		return (EINVAL);

	for (tmpva = base; tmpva < base + size; ) {
		pte = FUNC10(kernel_pmap, tmpva, &lvl);
		if (pte == NULL)
			return (EINVAL);

		if ((FUNC9(pte) & ATTR_IDX_MASK) == FUNC0(mode)) {
			/*
			 * We already have the correct attribute,
			 * ignore this entry.
			 */
			switch (lvl) {
			default:
				FUNC4("Invalid DMAP table level: %d\n", lvl);
			case 1:
				tmpva = (tmpva & ~L1_OFFSET) + L1_SIZE;
				break;
			case 2:
				tmpva = (tmpva & ~L2_OFFSET) + L2_SIZE;
				break;
			case 3:
				tmpva += PAGE_SIZE;
				break;
			}
		} else {
			/*
			 * Split the entry to an level 3 table, then
			 * set the new attribute.
			 */
			switch (lvl) {
			default:
				FUNC4("Invalid DMAP table level: %d\n", lvl);
			case 1:
				newpte = FUNC5(kernel_pmap, pte,
				    tmpva & ~L1_OFFSET);
				if (newpte == NULL)
					return (EINVAL);
				pte = FUNC7(pte, tmpva);
			case 2:
				newpte = FUNC6(kernel_pmap, pte,
				    tmpva);
				if (newpte == NULL)
					return (EINVAL);
				pte = FUNC8(pte, tmpva);
			case 3:
				/* Update the entry */
				l3 = FUNC9(pte);
				l3 &= ~ATTR_IDX_MASK;
				l3 |= FUNC0(mode);
				if (mode == DEVICE_MEMORY)
					l3 |= ATTR_XN;

				FUNC11(kernel_pmap, pte, l3, tmpva,
				    PAGE_SIZE);

				/*
				 * If moving to a non-cacheable entry flush
				 * the cache.
				 */
				if (mode == VM_MEMATTR_UNCACHEABLE)
					FUNC3(tmpva, L3_SIZE);

				break;
			}
			tmpva += PAGE_SIZE;
		}
	}

	return (0);
}