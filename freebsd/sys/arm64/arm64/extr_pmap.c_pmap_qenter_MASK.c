#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {scalar_t__ pv_memattr; } ;
struct TYPE_6__ {TYPE_1__ md; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RW ; 
 int ATTR_DEFAULT ; 
 int FUNC1 (scalar_t__) ; 
 int ATTR_UXN ; 
 int ATTR_XN ; 
 scalar_t__ DEVICE_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int L3_PAGE ; 
 scalar_t__ L3_SIZE ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void
FUNC8(vm_offset_t sva, vm_page_t *ma, int count)
{
	pd_entry_t *pde;
	pt_entry_t *pte, pa;
	vm_offset_t va;
	vm_page_t m;
	int i, lvl;

	va = sva;
	for (i = 0; i < count; i++) {
		pde = FUNC7(kernel_pmap, va, &lvl);
		FUNC2(pde != NULL,
		    ("pmap_qenter: Invalid page entry, va: 0x%lx", va));
		FUNC2(lvl == 2,
		    ("pmap_qenter: Invalid level %d", lvl));

		m = ma[i];
		pa = FUNC3(m) | ATTR_DEFAULT | FUNC0(ATTR_AP_RW) |
		    ATTR_UXN | FUNC1(m->md.pv_memattr) | L3_PAGE;
		if (m->md.pv_memattr == DEVICE_MEMORY)
			pa |= ATTR_XN;
		pte = FUNC5(pde, va);
		FUNC6(pte, pa);

		va += L3_SIZE;
	}
	FUNC4(kernel_pmap, sva, va);
}