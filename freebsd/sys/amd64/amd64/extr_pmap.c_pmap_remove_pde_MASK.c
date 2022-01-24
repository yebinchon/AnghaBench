#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_26__ {int wired_count; } ;
struct TYPE_29__ {TYPE_1__ pm_stats; } ;
struct TYPE_27__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_28__ {scalar_t__ valid; scalar_t__ ref_count; TYPE_2__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock**,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int NBPDR ; 
 scalar_t__ NPTEPG ; 
 int PAGE_SIZE ; 
 int PDRMASK ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_MANAGED ; 
 int PG_PS_FRAME ; 
 int PG_W ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 TYPE_4__* kernel_pmap ; 
 struct md_page* FUNC5 (int) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,int) ; 
 int FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct md_page*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int*,int) ; 
 TYPE_3__* FUNC15 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int) ; 
 int FUNC17 (TYPE_4__*) ; 
 int FUNC18 (TYPE_4__*,int,int /*<<< orphan*/ ,struct spglist*) ; 
 int FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC23(pmap_t pmap, pd_entry_t *pdq, vm_offset_t sva,
    struct spglist *free, struct rwlock **lockp)
{
	struct md_page *pvh;
	pd_entry_t oldpde;
	vm_offset_t eva, va;
	vm_page_t m, mpte;
	pt_entry_t PG_G, PG_A, PG_M, PG_RW;

	PG_G = FUNC9(pmap);
	PG_A = FUNC6(pmap);
	PG_M = FUNC11(pmap);
	PG_RW = FUNC17(pmap);

	FUNC3(pmap, MA_OWNED);
	FUNC1((sva & PDRMASK) == 0,
	    ("pmap_remove_pde: sva is not 2mpage aligned"));
	oldpde = FUNC19(pdq);
	if (oldpde & PG_W)
		pmap->pm_stats.wired_count -= NBPDR / PAGE_SIZE;
	if ((oldpde & PG_G) != 0)
		FUNC10(kernel_pmap, sva, oldpde);
	FUNC16(pmap, NBPDR / PAGE_SIZE);
	if (oldpde & PG_MANAGED) {
		FUNC0(lockp, oldpde & PG_PS_FRAME);
		pvh = FUNC5(oldpde & PG_PS_FRAME);
		FUNC13(pvh, pmap, sva);
		eva = sva + NBPDR;
		for (va = sva, m = FUNC2(oldpde & PG_PS_FRAME);
		    va < eva; va += PAGE_SIZE, m++) {
			if ((oldpde & (PG_M | PG_RW)) == (PG_M | PG_RW))
				FUNC22(m);
			if (oldpde & PG_A)
				FUNC21(m, PGA_REFERENCED);
			if (FUNC4(&m->md.pv_list) &&
			    FUNC4(&pvh->pv_list))
				FUNC20(m, PGA_WRITEABLE);
			FUNC8(m);
		}
	}
	if (pmap == kernel_pmap) {
		FUNC14(pmap, pdq, sva);
	} else {
		mpte = FUNC15(pmap, sva);
		if (mpte != NULL) {
			FUNC1(mpte->valid == VM_PAGE_BITS_ALL,
			    ("pmap_remove_pde: pte page not promoted"));
			FUNC16(pmap, 1);
			FUNC1(mpte->ref_count == NPTEPG,
			    ("pmap_remove_pde: pte page ref count error"));
			mpte->ref_count = 0;
			FUNC7(mpte, free, FALSE);
		}
	}
	return (FUNC18(pmap, sva, *FUNC12(pmap, sva), free));
}