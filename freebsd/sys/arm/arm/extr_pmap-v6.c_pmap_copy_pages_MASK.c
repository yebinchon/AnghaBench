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
struct pcpu {char* pc_cmap1_addr; char* pc_cmap2_addr; int /*<<< orphan*/  pc_cmap_lock; int /*<<< orphan*/ * pc_cmap2_pte2p; int /*<<< orphan*/ * pc_cmap1_pte2p; } ;
typedef  int /*<<< orphan*/  pt2_entry_t ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int PTE2_AP_KR ; 
 int PTE2_AP_KRW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int PTE2_NM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct pcpu* FUNC3 () ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
	pt2_entry_t *cmap1_pte2p, *cmap2_pte2p;
	vm_page_t a_pg, b_pg;
	char *a_cp, *b_cp;
	vm_offset_t a_pg_offset, b_pg_offset;
	struct pcpu *pc;
	int cnt;

	FUNC11();
	pc = FUNC3();
	cmap1_pte2p = pc->pc_cmap1_pte2p;
	cmap2_pte2p = pc->pc_cmap2_pte2p;
	FUNC5(&pc->pc_cmap_lock);
	if (FUNC9(cmap1_pte2p) != 0)
		FUNC7("pmap_copy_pages: CMAP1 busy");
	if (FUNC9(cmap2_pte2p) != 0)
		FUNC7("pmap_copy_pages: CMAP2 busy");
	while (xfersize > 0) {
		a_pg = ma[a_offset >> PAGE_SHIFT];
		a_pg_offset = a_offset & PAGE_MASK;
		cnt = FUNC4(xfersize, PAGE_SIZE - a_pg_offset);
		b_pg = mb[b_offset >> PAGE_SHIFT];
		b_pg_offset = b_offset & PAGE_MASK;
		cnt = FUNC4(cnt, PAGE_SIZE - b_pg_offset);
		FUNC10(cmap1_pte2p, FUNC0(FUNC1(a_pg),
		    PTE2_AP_KR | PTE2_NM, FUNC15(a_pg)));
		FUNC14((vm_offset_t)pc->pc_cmap1_addr);
		FUNC10(cmap2_pte2p, FUNC0(FUNC1(b_pg),
		    PTE2_AP_KRW, FUNC15(b_pg)));
		FUNC14((vm_offset_t)pc->pc_cmap2_addr);
		a_cp = pc->pc_cmap1_addr + a_pg_offset;
		b_cp = pc->pc_cmap2_addr + b_pg_offset;
		FUNC2(a_cp, b_cp, cnt);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
	FUNC8(cmap1_pte2p);
	FUNC13((vm_offset_t)pc->pc_cmap1_addr);
	FUNC8(cmap2_pte2p);
	FUNC13((vm_offset_t)pc->pc_cmap2_addr);
	FUNC12();
	FUNC6(&pc->pc_cmap_lock);
}