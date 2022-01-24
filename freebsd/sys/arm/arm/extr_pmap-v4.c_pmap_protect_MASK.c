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
typedef  int u_int ;
struct vm_page {int oflags; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int FUNC1 (int) ; 
 int L2_S_PROT_W ; 
 int PAGE_SIZE ; 
 struct vm_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int PVF_WRITE ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int VPO_UNMANAGED ; 
 size_t FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct l2_bucket* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct vm_page*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_page*) ; 

void
FUNC21(pmap_t pm, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
	struct l2_bucket *l2b;
	pt_entry_t *ptep, pte;
	vm_offset_t next_bucket;
	u_int flags;
	int flush;

	FUNC0(KTR_PMAP, "pmap_protect: pmap %p sva 0x%08x eva 0x%08x prot %x",
	    pm, sva, eva, prot);

	if ((prot & VM_PROT_READ) == 0) {
		FUNC13(pm, sva, eva);
		return;
	}

	if (prot & VM_PROT_WRITE) {
		/*
		 * If this is a read->write transition, just ignore it and let
		 * vm_fault() take care of it later.
		 */
		return;
	}

	FUNC18(&pvh_global_lock);
	FUNC3(pm);

	/*
	 * OK, at this point, we know we're doing write-protect operation.
	 * If the pmap is active, write-back the range.
	 */
	FUNC10(pm, sva, eva - sva, FALSE, FALSE);

	flush = ((eva - sva) >= (PAGE_SIZE * 4)) ? 0 : -1;
	flags = 0;

	while (sva < eva) {
		next_bucket = FUNC1(sva);
		if (next_bucket > eva)
			next_bucket = eva;

		l2b = FUNC11(pm, sva);
		if (l2b == NULL) {
			sva = next_bucket;
			continue;
		}

		ptep = &l2b->l2b_kva[FUNC8(sva)];

		while (sva < next_bucket) {
			if ((pte = *ptep) != 0 && (pte & L2_S_PROT_W) != 0) {
				struct vm_page *pg;
				u_int f;

				pg = FUNC2(FUNC9(pte));
				pte &= ~L2_S_PROT_W;
				*ptep = pte;
				FUNC5(ptep);

				if (!(pg->oflags & VPO_UNMANAGED)) {
					f = FUNC12(pg, pm, sva,
					    PVF_WRITE, 0);
					if (f & PVF_WRITE)
						FUNC20(pg);
				} else
					f = 0;

				if (flush >= 0) {
					flush++;
					flags |= f;
				} else
				if (FUNC6(f))
					FUNC17(pm, sva);
				else
				if (FUNC7(f))
					FUNC15(pm, sva);
			}

			sva += PAGE_SIZE;
			ptep++;
		}
	}


	if (flush) {
		if (FUNC6(flags))
			FUNC16(pm);
		else
		if (FUNC7(flags))
			FUNC14(pm);
	}
	FUNC19(&pvh_global_lock);

 	FUNC4(pm);
}