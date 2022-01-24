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

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int) ; 

void
FUNC5(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
	vm_page_t a_pg, b_pg;
	vm_offset_t a_pg_offset, b_pg_offset;
	int cnt;

	FUNC1();
	FUNC2();
	while (xfersize > 0) {
		a_pg = ma[a_offset >> PAGE_SHIFT];
		a_pg_offset = a_offset & PAGE_MASK;
		cnt = FUNC3(xfersize, PAGE_SIZE - a_pg_offset);
		b_pg = mb[b_offset >> PAGE_SHIFT];
		b_pg_offset = b_offset & PAGE_MASK;
		cnt = FUNC3(cnt, PAGE_SIZE - b_pg_offset);
		FUNC4(FUNC0(a_pg), a_pg_offset,
		    FUNC0(b_pg), b_pg_offset, cnt);
		xfersize -= cnt;
		a_offset += cnt;
		b_offset += cnt;
	}
}