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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  pt2_entry_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PTE2_AP_KRW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(vm_offset_t sva, vm_page_t *ma, int count)
{
	u_int anychanged;
	pt2_entry_t *epte2p, *pte2p, pte2;
	vm_page_t m;
	vm_paddr_t pa;

	anychanged = 0;
	pte2p = FUNC3(sva);
	epte2p = pte2p + count;
	while (pte2p < epte2p) {
		m = *ma++;
		pa = FUNC1(m);
		pte2 = FUNC5(pte2p);
		if ((FUNC6(pte2) != pa) ||
		    (FUNC4(pte2) != FUNC9(m))) {
			anychanged++;
			FUNC7(pte2p, FUNC0(pa, PTE2_AP_KRW,
			    FUNC9(m)));
		}
		pte2p++;
	}
	if (FUNC2(anychanged))
		FUNC8(sva, count * PAGE_SIZE);
}