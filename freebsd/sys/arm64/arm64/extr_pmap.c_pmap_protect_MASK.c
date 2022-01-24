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
typedef  int vm_prot_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int ATTR_AP_RW_BIT ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_DBM ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_XN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int L0_OFFSET ; 
 int L0_SIZE ; 
 int L1_OFFSET ; 
 int L1_SIZE ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 int L2_SIZE ; 
 int L2_TABLE ; 
 scalar_t__ L3_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_NONE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int* FUNC9 (int*,int) ; 
 int* FUNC10 (int*,int) ; 
 int* FUNC11 (int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int,int,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void
FUNC18(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
	vm_offset_t va, va_next;
	pd_entry_t *l0, *l1, *l2;
	pt_entry_t *l3p, l3, mask, nbits;

	FUNC1((prot & ~VM_PROT_ALL) == 0, ("invalid prot %x", prot));
	if (prot == VM_PROT_NONE) {
		FUNC16(pmap, sva, eva);
		return;
	}

	mask = nbits = 0;
	if ((prot & VM_PROT_WRITE) == 0) {
		mask |= ATTR_AP_RW_BIT | ATTR_SW_DBM;
		nbits |= FUNC0(ATTR_AP_RO);
	}
	if ((prot & VM_PROT_EXECUTE) == 0) {
		mask |= ATTR_XN;
		nbits |= ATTR_XN;
	}
	if (mask == 0)
		return;

	FUNC3(pmap);
	for (; sva < eva; sva = va_next) {

		l0 = FUNC8(pmap, sva);
		if (FUNC13(l0) == 0) {
			va_next = (sva + L0_SIZE) & ~L0_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		l1 = FUNC9(l0, sva);
		if (FUNC13(l1) == 0) {
			va_next = (sva + L1_SIZE) & ~L1_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		va_next = (sva + L2_SIZE) & ~L2_OFFSET;
		if (va_next < sva)
			va_next = eva;

		l2 = FUNC10(l1, sva);
		if (FUNC13(l2) == 0)
			continue;

		if ((FUNC13(l2) & ATTR_DESCR_MASK) == L2_BLOCK) {
			if (sva + L2_SIZE == va_next && eva >= va_next) {
				FUNC14(pmap, l2, sva, mask, nbits);
				continue;
			} else if (FUNC6(pmap, l2, sva) == NULL)
				continue;
		}
		FUNC1((FUNC13(l2) & ATTR_DESCR_MASK) == L2_TABLE,
		    ("pmap_protect: Invalid L2 entry after demotion"));

		if (va_next > eva)
			va_next = eva;

		va = va_next;
		for (l3p = FUNC11(l2, sva); sva != va_next; l3p++,
		    sva += L3_SIZE) {
			l3 = FUNC13(l3p);
retry:
			/*
			 * Go to the next L3 entry if the current one is
			 * invalid or already has the desired access
			 * restrictions in place.  (The latter case occurs
			 * frequently.  For example, in a "buildworld"
			 * workload, almost 1 out of 4 L3 entries already
			 * have the desired restrictions.)
			 */
			if (!FUNC12(l3) || (l3 & mask) == nbits) {
				if (va != va_next) {
					FUNC7(pmap, va, sva);
					va = va_next;
				}
				continue;
			}

			/*
			 * When a dirty read/write mapping is write protected,
			 * update the page's dirty field.
			 */
			if ((l3 & ATTR_SW_MANAGED) != 0 &&
			    (nbits & FUNC0(ATTR_AP_RO)) != 0 &&
			    FUNC15(l3))
				FUNC17(FUNC2(l3 & ~ATTR_MASK));

			if (!FUNC5(l3p, &l3, (l3 & ~mask) | nbits))
				goto retry;
			if (va == va_next)
				va = sva;
		}
		if (va != va_next)
			FUNC7(pmap, va, sva);
	}
	FUNC4(pmap);
}