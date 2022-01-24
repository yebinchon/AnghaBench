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
struct pmap_preinit_mapping {scalar_t__ va; scalar_t__ size; scalar_t__ pa; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ L2_SHIFT ; 
 int L2_SIZE ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int PMAP_PREINIT_MAPPING_COUNT ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 struct pmap_preinit_mapping* pmap_preinit_mapping ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ vm_initialized ; 

void
FUNC11(vm_offset_t va, vm_size_t size)
{
	struct pmap_preinit_mapping *ppim;
	vm_offset_t offset, tmpsize, va_trunc;
	pd_entry_t *pde;
	pt_entry_t *l2;
	int i, lvl, l2_blocks, block;
	bool preinit_map;

	l2_blocks =
	   (FUNC9(va + size, L2_SIZE) - FUNC8(va, L2_SIZE)) >> L2_SHIFT;
	FUNC0(l2_blocks > 0, ("pmap_unmapbios: invalid size %lx", size));

	/* Remove preinit mapping */
	preinit_map = false;
	block = 0;
	for (i = 0; i < PMAP_PREINIT_MAPPING_COUNT; i++) {
		ppim = pmap_preinit_mapping + i;
		if (ppim->va == va) {
			FUNC0(ppim->size == size,
			    ("pmap_unmapbios: size mismatch"));
			ppim->va = 0;
			ppim->pa = 0;
			ppim->size = 0;
			preinit_map = true;
			offset = block * L2_SIZE;
			va_trunc = FUNC8(va, L2_SIZE) + offset;

			/* Remove L2_BLOCK */
			pde = FUNC6(kernel_pmap, va_trunc, &lvl);
			FUNC0(pde != NULL,
			    ("pmap_unmapbios: Invalid page entry, va: 0x%lx",
			    va_trunc));
			l2 = FUNC5(pde, va_trunc);
			FUNC2(l2);

			if (block == (l2_blocks - 1))
				break;
			block++;
		}
	}
	if (preinit_map) {
		FUNC3(kernel_pmap);
		return;
	}

	/* Unmap the pages reserved with kva_alloc. */
	if (vm_initialized) {
		offset = va & PAGE_MASK;
		size = FUNC7(offset + size);
		va = FUNC10(va);

		pde = FUNC6(kernel_pmap, va, &lvl);
		FUNC0(pde != NULL,
		    ("pmap_unmapbios: Invalid page entry, va: 0x%lx", va));
		FUNC0(lvl == 2, ("pmap_unmapbios: Invalid level %d", lvl));

		/* Unmap and invalidate the pages */
                for (tmpsize = 0; tmpsize < size; tmpsize += PAGE_SIZE)
			FUNC4(va + tmpsize);

		FUNC1(va, size);
	}
}