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
typedef  scalar_t__ vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct sync_list {scalar_t__ vaddr; scalar_t__ pages; scalar_t__ datacount; scalar_t__ dataoffs; } ;
typedef  int /*<<< orphan*/  bus_dmasync_op_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct sync_list *sl, bus_dmasync_op_t op,
    int bufaligned)
{
	vm_offset_t tempvaddr;
	vm_page_t curpage;
	size_t npages;

	if (sl->vaddr != 0) {
		FUNC3(sl->vaddr, sl->datacount, op, bufaligned);
		return;
	}

	tempvaddr = 0;
	npages = FUNC2(FUNC7(sl->dataoffs + sl->datacount));

	for (curpage = sl->pages; curpage != sl->pages + npages; ++curpage) {
		/*
		 * If the page is mapped to some other VA that hasn't
		 * been supplied to busdma, then pmap_quick_enter_page()
		 * will find all duplicate mappings and mark them
		 * uncacheable.
		 * That will also do any necessary wb/inv.  Otherwise,
		 * if the page is truly unmapped, then we don't actually
		 * need to do cache maintenance.
		 * XXX: May overwrite DMA'ed data in the POSTREAD
		 * case where the CPU has written to a cacheline not
		 * completely covered by the DMA region.
		 */
		FUNC0(FUNC1(curpage) == FUNC1(sl->pages) +
		    FUNC6(curpage - sl->pages),
		    ("unexpected vm_page_t phys: 0x%08x != 0x%08x",
		    FUNC1(curpage), FUNC1(sl->pages) +
		    FUNC6(curpage - sl->pages)));
		tempvaddr = FUNC4(curpage);
		FUNC5(tempvaddr);
	}
}