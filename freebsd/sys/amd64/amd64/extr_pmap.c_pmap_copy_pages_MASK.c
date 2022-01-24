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
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 

void
FUNC5(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
	void *a_cp, *b_cp;
	vm_page_t pages[2];
	vm_offset_t vaddr[2], a_pg_offset, b_pg_offset;
	int cnt;
	boolean_t mapped;

	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		pages[0] = ma[a_offset >> PAGE_SHIFT];
		b_pg_offset = b_offset & PAGE_MASK;
		pages[1] = mb[b_offset >> PAGE_SHIFT];
		cnt = FUNC2(xfersize, PAGE_SIZE - a_pg_offset);
		cnt = FUNC2(cnt, PAGE_SIZE - b_pg_offset);
		mapped = FUNC3(pages, vaddr, 2, FALSE);
		a_cp = (char *)vaddr[0] + a_pg_offset;
		b_cp = (char *)vaddr[1] + b_pg_offset;
		FUNC1(a_cp, b_cp, cnt);
		if (FUNC0(mapped))
			FUNC4(pages, vaddr, 2, FALSE);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
}