#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_3__ ;
typedef  struct TYPE_48__   TYPE_30__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_29__ ;
typedef  struct TYPE_45__   TYPE_1__ ;
typedef  struct TYPE_44__   TYPE_13__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int u_int ;
struct rwlock {int dummy; } ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
typedef  scalar_t__ int8_t ;
typedef  int boolean_t ;
struct TYPE_45__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_50__ {scalar_t__ pm_type; TYPE_1__ pm_stats; } ;
struct TYPE_49__ {int pv_va; } ;
struct TYPE_48__ {int clean_sva; int clean_eva; } ;
struct TYPE_44__ {int /*<<< orphan*/  pv_gen; int /*<<< orphan*/  pv_list; int /*<<< orphan*/  pat_mode; } ;
struct TYPE_47__ {int oflags; scalar_t__ psind; scalar_t__ ref_count; int aflags; int flags; TYPE_13__ md; } ;
struct TYPE_46__ {int /*<<< orphan*/  pv_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 scalar_t__ NPTEPG ; 
 int PDRMASK ; 
 int PGA_REFERENCED ; 
 int PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_NX ; 
 int PG_PS ; 
 int PG_U ; 
 int PG_W ; 
 TYPE_2__* FUNC2 (int) ; 
 int PMAP_ENTER_NOSLEEP ; 
 int PMAP_ENTER_RESERVED ; 
 int PMAP_ENTER_WIRED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ PT_X86 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int UPT_MAX_ADDRESS ; 
 int UPT_MIN_ADDRESS ; 
 int VM_MAXUSER_ADDRESS ; 
 int VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int VPO_UNMANAGED ; 
 TYPE_2__* FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC11 (TYPE_4__*,struct rwlock**) ; 
 TYPE_4__* kernel_pmap ; 
 TYPE_30__ kmi ; 
 TYPE_29__* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int pg_nx ; 
 int FUNC14 (TYPE_4__*) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int*,int,struct rwlock**) ; 
 int FUNC17 (TYPE_4__*,int,int,int,TYPE_2__*,struct rwlock**) ; 
 int FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 
 int FUNC20 (TYPE_4__*) ; 
 int* FUNC21 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int* FUNC23 (int*,int) ; 
 int FUNC24 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,int*,int,struct rwlock**) ; 
 scalar_t__ FUNC26 (TYPE_4__*) ; 
 TYPE_3__* FUNC27 (TYPE_13__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int) ; 
 int FUNC29 (TYPE_4__*) ; 
 int FUNC30 (TYPE_4__*) ; 
 int FUNC31 (int*) ; 
 int FUNC32 (int*,int) ; 
 int /*<<< orphan*/  FUNC33 (int*,int) ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC34 (struct rwlock*) ; 
 int FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*) ; 
 scalar_t__ FUNC39 (TYPE_2__*) ; 

int
FUNC40(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    u_int flags, int8_t psind)
{
	struct rwlock *lock;
	pd_entry_t *pde;
	pt_entry_t *pte, PG_G, PG_A, PG_M, PG_RW, PG_V;
	pt_entry_t newpte, origpte;
	pv_entry_t pv;
	vm_paddr_t opa, pa;
	vm_page_t mpte, om;
	int rv;
	boolean_t nosleep;

	PG_A = FUNC14(pmap);
	PG_G = FUNC18(pmap);
	PG_M = FUNC20(pmap);
	PG_V = FUNC30(pmap);
	PG_RW = FUNC29(pmap);

	va = FUNC35(va);
	FUNC1(va <= VM_MAX_KERNEL_ADDRESS, ("pmap_enter: toobig"));
	FUNC1(va < UPT_MIN_ADDRESS || va >= UPT_MAX_ADDRESS,
	    ("pmap_enter: invalid to pmap_enter page table pages (va: 0x%lx)",
	    va));
	FUNC1((m->oflags & VPO_UNMANAGED) != 0 || va < kmi.clean_sva ||
	    va >= kmi.clean_eva,
	    ("pmap_enter: managed mapping within the clean submap"));
	if ((m->oflags & VPO_UNMANAGED) == 0)
		FUNC7(m);
	FUNC1((flags & PMAP_ENTER_RESERVED) == 0,
	    ("pmap_enter: flags %u has reserved bits set", flags));
	pa = FUNC8(m);
	newpte = (pt_entry_t)(pa | PG_A | PG_V);
	if ((flags & VM_PROT_WRITE) != 0)
		newpte |= PG_M;
	if ((prot & VM_PROT_WRITE) != 0)
		newpte |= PG_RW;
	FUNC1((newpte & (PG_M | PG_RW)) != PG_M,
	    ("pmap_enter: flags includes VM_PROT_WRITE but prot doesn't"));
	if ((prot & VM_PROT_EXECUTE) == 0)
		newpte |= pg_nx;
	if ((flags & PMAP_ENTER_WIRED) != 0)
		newpte |= PG_W;
	if (va < VM_MAXUSER_ADDRESS)
		newpte |= PG_U;
	if (pmap == kernel_pmap)
		newpte |= PG_G;
	newpte |= FUNC15(pmap, m->md.pat_mode, psind > 0);

	/*
	 * Set modified bit gratuitously for writeable mappings if
	 * the page is unmanaged. We do not want to take a fault
	 * to do the dirty bit accounting for these mappings.
	 */
	if ((m->oflags & VPO_UNMANAGED) != 0) {
		if ((newpte & PG_RW) != 0)
			newpte |= PG_M;
	} else
		newpte |= PG_MANAGED;

	lock = NULL;
	FUNC3(pmap);
	if (psind == 1) {
		/* Assert the required virtual and physical alignment. */ 
		FUNC1((va & PDRMASK) == 0, ("pmap_enter: va unaligned"));
		FUNC1(m->psind > 0, ("pmap_enter: m->psind < psind"));
		rv = FUNC17(pmap, va, newpte | PG_PS, flags, m, &lock);
		goto out;
	}
	mpte = NULL;

	/*
	 * In the case that a page table page is not
	 * resident, we are creating it here.
	 */
retry:
	pde = FUNC21(pmap, va);
	if (pde != NULL && (*pde & PG_V) != 0 && ((*pde & PG_PS) == 0 ||
	    FUNC16(pmap, pde, va, &lock))) {
		pte = FUNC23(pde, va);
		if (va < VM_MAXUSER_ADDRESS && mpte == NULL) {
			mpte = FUNC2(*pde & PG_FRAME);
			mpte->ref_count++;
		}
	} else if (va < VM_MAXUSER_ADDRESS) {
		/*
		 * Here if the pte page isn't mapped, or if it has been
		 * deallocated.
		 */
		nosleep = (flags & PMAP_ENTER_NOSLEEP) != 0;
		mpte = FUNC9(pmap, FUNC22(va),
		    nosleep ? NULL : &lock);
		if (mpte == NULL && nosleep) {
			rv = KERN_RESOURCE_SHORTAGE;
			goto out;
		}
		goto retry;
	} else
		FUNC13("pmap_enter: invalid page directory va=%#lx", va);

	origpte = *pte;
	pv = NULL;
	if (va < VM_MAXUSER_ADDRESS && pmap->pm_type == PT_X86)
		newpte |= FUNC24(pmap, va);

	/*
	 * Is the specified virtual address already mapped?
	 */
	if ((origpte & PG_V) != 0) {
		/*
		 * Wiring change, just update stats. We don't worry about
		 * wiring PT pages as they remain resident as long as there
		 * are valid mappings in them. Hence, if a user page is wired,
		 * the PT page will be also.
		 */
		if ((newpte & PG_W) != 0 && (origpte & PG_W) == 0)
			pmap->pm_stats.wired_count++;
		else if ((newpte & PG_W) == 0 && (origpte & PG_W) != 0)
			pmap->pm_stats.wired_count--;

		/*
		 * Remove the extra PT page reference.
		 */
		if (mpte != NULL) {
			mpte->ref_count--;
			FUNC1(mpte->ref_count > 0,
			    ("pmap_enter: missing reference to page table page,"
			     " va: 0x%lx", va));
		}

		/*
		 * Has the physical page changed?
		 */
		opa = origpte & PG_FRAME;
		if (opa == pa) {
			/*
			 * No, might be a protection or wiring change.
			 */
			if ((origpte & PG_MANAGED) != 0 &&
			    (newpte & PG_RW) != 0)
				FUNC37(m, PGA_WRITEABLE);
			if (((origpte ^ newpte) & ~(PG_M | PG_A)) == 0)
				goto unchanged;
			goto validate;
		}

		/*
		 * The physical page has changed.  Temporarily invalidate
		 * the mapping.  This ensures that all threads sharing the
		 * pmap keep a consistent view of the mapping, which is
		 * necessary for the correct handling of COW faults.  It
		 * also permits reuse of the old mapping's PV entry,
		 * avoiding an allocation.
		 *
		 * For consistency, handle unmanaged mappings the same way.
		 */
		origpte = FUNC31(pte);
		FUNC1((origpte & PG_FRAME) == opa,
		    ("pmap_enter: unexpected pa update for %#lx", va));
		if ((origpte & PG_MANAGED) != 0) {
			om = FUNC2(opa);

			/*
			 * The pmap lock is sufficient to synchronize with
			 * concurrent calls to pmap_page_test_mappings() and
			 * pmap_ts_referenced().
			 */
			if ((origpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
				FUNC38(om);
			if ((origpte & PG_A) != 0)
				FUNC37(om, PGA_REFERENCED);
			FUNC0(&lock, opa);
			pv = FUNC27(&om->md, pmap, va);
			FUNC1(pv != NULL,
			    ("pmap_enter: no PV entry for %#lx", va));
			if ((newpte & PG_MANAGED) == 0)
				FUNC10(pmap, pv);
			if ((om->aflags & PGA_WRITEABLE) != 0 &&
			    FUNC5(&om->md.pv_list) &&
			    ((om->flags & PG_FICTITIOUS) != 0 ||
			    FUNC5(&FUNC12(opa)->pv_list)))
				FUNC36(om, PGA_WRITEABLE);
		}
		if ((origpte & PG_A) != 0)
			FUNC19(pmap, va);
		origpte = 0;
	} else {
		/*
		 * Increment the counters.
		 */
		if ((newpte & PG_W) != 0)
			pmap->pm_stats.wired_count++;
		FUNC28(pmap, 1);
	}

	/*
	 * Enter on the PV list if part of our managed memory.
	 */
	if ((newpte & PG_MANAGED) != 0) {
		if (pv == NULL) {
			pv = FUNC11(pmap, &lock);
			pv->pv_va = va;
		}
		FUNC0(&lock, pa);
		FUNC6(&m->md.pv_list, pv, pv_next);
		m->md.pv_gen++;
		if ((newpte & PG_RW) != 0)
			FUNC37(m, PGA_WRITEABLE);
	}

	/*
	 * Update the PTE.
	 */
	if ((origpte & PG_V) != 0) {
validate:
		origpte = FUNC32(pte, newpte);
		FUNC1((origpte & PG_FRAME) == pa,
		    ("pmap_enter: unexpected pa update for %#lx", va));
		if ((newpte & PG_M) == 0 && (origpte & (PG_M | PG_RW)) ==
		    (PG_M | PG_RW)) {
			if ((origpte & PG_MANAGED) != 0)
				FUNC38(m);

			/*
			 * Although the PTE may still have PG_RW set, TLB
			 * invalidation may nonetheless be required because
			 * the PTE no longer has PG_M set.
			 */
		} else if ((origpte & PG_NX) != 0 || (newpte & PG_NX) == 0) {
			/*
			 * This PTE change does not require TLB invalidation.
			 */
			goto unchanged;
		}
		if ((origpte & PG_A) != 0)
			FUNC19(pmap, va);
	} else
		FUNC33(pte, newpte);

unchanged:

#if VM_NRESERVLEVEL > 0
	/*
	 * If both the page table page and the reservation are fully
	 * populated, then attempt promotion.
	 */
	if ((mpte == NULL || mpte->ref_count == NPTEPG) &&
	    pmap_ps_enabled(pmap) &&
	    (m->flags & PG_FICTITIOUS) == 0 &&
	    vm_reserv_level_iffullpop(m) == 0)
		pmap_promote_pde(pmap, pde, va, &lock);
#endif

	rv = KERN_SUCCESS;
out:
	if (lock != NULL)
		FUNC34(lock);
	FUNC4(pmap);
	return (rv);
}