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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_long ;
struct spglist {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_6__ {int /*<<< orphan*/  ss; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_7__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int AMDID_PAGE1GB ; 
 scalar_t__ DMAP_MIN_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ NBPDP ; 
 scalar_t__ NBPDR ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PDPMASK ; 
 scalar_t__ PDRMASK ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC7 (struct spglist*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int X86_PG_PS ; 
 int X86_PG_V ; 
 int amd_feature ; 
 scalar_t__ dmaplimit ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  large_vmem ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ) ; 
 TYPE_3__ plinks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int* FUNC10 (scalar_t__) ; 
 int* FUNC11 (int*,scalar_t__) ; 
 int* FUNC12 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (struct spglist*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

void
FUNC16(void *svaa, vm_size_t len)
{
	vm_offset_t sva, va;
	vm_size_t inc;
	pdp_entry_t *pdpe, pdp;
	pd_entry_t *pde, pd;
	pt_entry_t *pte;
	vm_page_t m;
	struct spglist spgf;

	sva = (vm_offset_t)svaa;
	if (len == 0 || sva + len < sva || (sva >= DMAP_MIN_ADDRESS &&
	    sva + len <= DMAP_MIN_ADDRESS + dmaplimit))
		return;

	FUNC6(&spgf);
	FUNC1(FUNC3(sva) &&
	    FUNC3(sva + len - 1),
	    ("not largemap range %#lx %#lx", (u_long)svaa, (u_long)svaa + len));
	FUNC4(kernel_pmap);
	for (va = sva; va < sva + len; va += inc) {
		pdpe = FUNC10(va);
		pdp = *pdpe;
		FUNC1((pdp & X86_PG_V) != 0,
		    ("invalid pdp va %#lx pdpe %#lx pdp %#lx", va,
		    (u_long)pdpe, pdp));
		if ((pdp & X86_PG_PS) != 0) {
			FUNC1((amd_feature & AMDID_PAGE1GB) != 0,
			    ("no 1G pages, va %#lx pdpe %#lx pdp %#lx", va,
			    (u_long)pdpe, pdp));
			FUNC1((va & PDPMASK) == 0,
			    ("PDPMASK bit set, va %#lx pdpe %#lx pdp %#lx", va,
			    (u_long)pdpe, pdp));
			FUNC1(va + NBPDP <= sva + len,
			    ("unmap covers partial 1GB page, sva %#lx va %#lx "
			    "pdpe %#lx pdp %#lx len %#lx", sva, va,
			    (u_long)pdpe, pdp, len));
			*pdpe = 0;
			inc = NBPDP;
			continue;
		}
		pde = FUNC12(pdpe, va);
		pd = *pde;
		FUNC1((pd & X86_PG_V) != 0,
		    ("invalid pd va %#lx pde %#lx pd %#lx", va,
		    (u_long)pde, pd));
		if ((pd & X86_PG_PS) != 0) {
			FUNC1((va & PDRMASK) == 0,
			    ("PDRMASK bit set, va %#lx pde %#lx pd %#lx", va,
			    (u_long)pde, pd));
			FUNC1(va + NBPDR <= sva + len,
			    ("unmap covers partial 2MB page, sva %#lx va %#lx "
			    "pde %#lx pd %#lx len %#lx", sva, va, (u_long)pde,
			    pd, len));
			FUNC8(pde, 0);
			inc = NBPDR;
			m = FUNC2(FUNC0((vm_offset_t)pde));
			m->ref_count--;
			if (m->ref_count == 0) {
				*pdpe = 0;
				FUNC7(&spgf, m, plinks.s.ss);
			}
			continue;
		}
		pte = FUNC11(pde, va);
		FUNC1((*pte & X86_PG_V) != 0,
		    ("invalid pte va %#lx pte %#lx pt %#lx", va,
		    (u_long)pte, *pte));
		FUNC13(pte);
		inc = PAGE_SIZE;
		m = FUNC2(FUNC0((vm_offset_t)pte));
		m->ref_count--;
		if (m->ref_count == 0) {
			*pde = 0;
			FUNC7(&spgf, m, plinks.s.ss);
			m = FUNC2(FUNC0((vm_offset_t)pde));
			m->ref_count--;
			if (m->ref_count == 0) {
				*pdpe = 0;
				FUNC7(&spgf, m, plinks.s.ss);
			}
		}
	}
	FUNC9(kernel_pmap, sva, sva + len);
	FUNC5(kernel_pmap);
	FUNC14(&spgf, false);
	FUNC15(large_vmem, sva, len);
}