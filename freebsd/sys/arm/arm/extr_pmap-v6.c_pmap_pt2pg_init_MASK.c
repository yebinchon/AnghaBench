#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt2_entry_t ;
typedef  scalar_t__ pmap_t ;
struct TYPE_7__ {scalar_t__ pat_mode; } ;
struct TYPE_8__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ pt_memattr ; 

__attribute__((used)) static __inline vm_paddr_t
FUNC8(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
	vm_paddr_t pa;
	pt2_entry_t *pte2p;

	/* Check page attributes. */
	if (m->md.pat_mode != pt_memattr)
		FUNC3(m, pt_memattr);

	/* Zero page and init wire counts. */
	pa = FUNC4(m);
	FUNC6(m);

	/*
	 * Map page to PT2MAP address space for given pmap.
	 * Note that PT2MAP space is shared with all pmaps.
	 */
	if (pmap == kernel_pmap)
		FUNC2(va, FUNC0(pa));
	else {
		pte2p = FUNC5(pmap, va);
		FUNC7(pte2p, FUNC1(pa));
	}

	return (pa);
}