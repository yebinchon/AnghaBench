#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_9__ {scalar_t__ pindex; int psind; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 scalar_t__ NBPDR ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PDRMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_EXECUTE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  listq ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,struct rwlock**) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,TYPE_1__*,struct rwlock**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct rwlock*) ; 

void
FUNC11(pmap_t pmap, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
	struct rwlock *lock;
	vm_offset_t va;
	vm_page_t m, mpte;
	vm_pindex_t diff, psize;

	FUNC3(m_start->object);

	psize = FUNC4(end - start);
	mpte = NULL;
	m = m_start;
	lock = NULL;
	FUNC0(pmap);
	while (m != NULL && (diff = m->pindex - m_start->pindex) < psize) {
		va = start + FUNC9(diff);
		if ((va & PDRMASK) == 0 && va + NBPDR <= end &&
		    m->psind == 1 && FUNC8(pmap) &&
		    FUNC5(pmap, (prot & VM_PROT_EXECUTE) != 0) &&
		    FUNC6(pmap, va, m, prot, &lock))
			m = &m[NBPDR / PAGE_SIZE - 1];
		else
			mpte = FUNC7(pmap, va, m, prot,
			    mpte, &lock);
		m = FUNC2(m, listq);
	}
	if (lock != NULL)
		FUNC10(lock);
	FUNC1(pmap);
}