#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  int u_long ;
typedef  int u_int64_t ;
struct msgbuf {int dummy; } ;
typedef  int quad_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  physmap ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* mp_bootaddress ) (int*,int*) ;int /*<<< orphan*/  (* parse_memmap ) (int /*<<< orphan*/ ,int*,int*) ;} ;

/* Variables and functions */
 scalar_t__ CADDR1 ; 
 int* CMAP1 ; 
 int FALSE ; 
 int MAXMEM ; 
 int Maxmem ; 
 int PAGES_PER_GB ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PG_NC_PCD ; 
 int PG_NC_PWT ; 
 int PG_RW ; 
 int PG_V ; 
 int PHYS_AVAIL_ENTRIES ; 
 scalar_t__ FUNC0 (int) ; 
 int RB_VERBOSE ; 
 int TRUE ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 scalar_t__ VM_GUEST_NO ; 
 int FUNC2 (int) ; 
 int basemem ; 
 int boothowto ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* dump_avail ; 
 scalar_t__ FUNC4 (char*,int*) ; 
 TYPE_1__ init_ops ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ kernphys ; 
 struct msgbuf* msgbufp ; 
 int msgbufsize ; 
 int* phys_avail ; 
 scalar_t__ physmem ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*) ; 
 int FUNC12 (int) ; 
 scalar_t__ vm_guest ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void
FUNC14(caddr_t kmdp, u_int64_t first)
{
	int i, physmap_idx, pa_indx, da_indx;
	vm_paddr_t pa, physmap[PHYS_AVAIL_ENTRIES];
	u_long physmem_start, physmem_tunable, memtest;
	pt_entry_t *pte;
	quad_t dcons_addr, dcons_size;
	int page_counter;

	/*
	 * Tell the physical memory allocator about pages used to store
	 * the kernel and preloaded data.  See kmem_bootstrap_free().
	 */
	FUNC13((vm_paddr_t)kernphys, FUNC12(first));

	FUNC3(physmap, sizeof(physmap));
	physmap_idx = 0;

	init_ops.parse_memmap(kmdp, physmap, &physmap_idx);
	physmap_idx -= 2;

	/*
	 * Find the 'base memory' segment for SMP
	 */
	basemem = 0;
	for (i = 0; i <= physmap_idx; i += 2) {
		if (physmap[i] <= 0xA0000) {
			basemem = physmap[i + 1] / 1024;
			break;
		}
	}
	if (basemem == 0 || basemem > 640) {
		if (bootverbose)
			FUNC7(
		"Memory map doesn't contain a basemem segment, faking it");
		basemem = 640;
	}

	/*
	 * Maxmem isn't the "maximum memory", it's one larger than the
	 * highest page of the physical address space.  It should be
	 * called something like "Maxphyspage".  We may adjust this
	 * based on ``hw.physmem'' and the results of the memory test.
	 */
	Maxmem = FUNC2(physmap[physmap_idx + 1]);

#ifdef MAXMEM
	Maxmem = MAXMEM / 4;
#endif

	if (FUNC1("hw.physmem", &physmem_tunable))
		Maxmem = FUNC2(physmem_tunable);

	/*
	 * The boot memory test is disabled by default, as it takes a
	 * significant amount of time on large-memory systems, and is
	 * unfriendly to virtual machines as it unnecessarily touches all
	 * pages.
	 *
	 * A general name is used as the code may be extended to support
	 * additional tests beyond the current "page present" test.
	 */
	memtest = 0;
	FUNC1("hw.memtest.tests", &memtest);

	/*
	 * Don't allow MAXMEM or hw.physmem to extend the amount of memory
	 * in the system.
	 */
	if (Maxmem > FUNC2(physmap[physmap_idx + 1]))
		Maxmem = FUNC2(physmap[physmap_idx + 1]);

	if (FUNC2(physmap[physmap_idx + 1]) != Maxmem &&
	    (boothowto & RB_VERBOSE))
		FUNC7("Physical memory use set to %ldK\n", Maxmem * 4);

	/*
	 * Make hole for "AP -> long mode" bootstrap code.  The
	 * mp_bootaddress vector is only available when the kernel
	 * is configured to support APs and APs for the system start
	 * in real mode mode (e.g. SMP bare metal).
	 */
	if (init_ops.mp_bootaddress)
		init_ops.mp_bootaddress(physmap, &physmap_idx);

	/* call pmap initialization to make new kernel address space */
	FUNC6(&first);

	/*
	 * Size up each available chunk of physical memory.
	 *
	 * XXX Some BIOSes corrupt low 64KB between suspend and resume.
	 * By default, mask off the first 16 pages unless we appear to be
	 * running in a VM.
	 */
	physmem_start = (vm_guest > VM_GUEST_NO ? 1 : 16) << PAGE_SHIFT;
	FUNC1("hw.physmem.start", &physmem_start);
	if (physmap[0] < physmem_start) {
		if (physmem_start < PAGE_SIZE)
			physmap[0] = PAGE_SIZE;
		else if (physmem_start >= physmap[1])
			physmap[0] = FUNC9(physmap[1] - PAGE_SIZE);
		else
			physmap[0] = FUNC9(physmem_start);
	}
	pa_indx = 0;
	da_indx = 1;
	phys_avail[pa_indx++] = physmap[0];
	phys_avail[pa_indx] = physmap[0];
	dump_avail[da_indx] = physmap[0];
	pte = CMAP1;

	/*
	 * Get dcons buffer address
	 */
	if (FUNC4("dcons.addr", &dcons_addr) == 0 ||
	    FUNC4("dcons.size", &dcons_size) == 0)
		dcons_addr = 0;

	/*
	 * physmap is in bytes, so when converting to page boundaries,
	 * round up the start address and round down the end address.
	 */
	page_counter = 0;
	if (memtest != 0)
		FUNC7("Testing system memory");
	for (i = 0; i <= physmap_idx; i += 2) {
		vm_paddr_t end;

		end = FUNC8((vm_paddr_t)Maxmem);
		if (physmap[i + 1] < end)
			end = FUNC12(physmap[i + 1]);
		for (pa = FUNC9(physmap[i]); pa < end; pa += PAGE_SIZE) {
			int tmp, page_bad, full;
			int *ptr = (int *)CADDR1;

			full = FALSE;
			/*
			 * block out kernel memory as not available.
			 */
			if (pa >= (vm_paddr_t)kernphys && pa < first)
				goto do_dump_avail;

			/*
			 * block out dcons buffer
			 */
			if (dcons_addr > 0
			    && pa >= FUNC12(dcons_addr)
			    && pa < dcons_addr + dcons_size)
				goto do_dump_avail;

			page_bad = FALSE;
			if (memtest == 0)
				goto skip_memtest;

			/*
			 * Print a "." every GB to show we're making
			 * progress.
			 */
			page_counter++;
			if ((page_counter % PAGES_PER_GB) == 0)
				FUNC7(".");

			/*
			 * map page into kernel: valid, read/write,non-cacheable
			 */
			*pte = pa | PG_V | PG_RW | PG_NC_PWT | PG_NC_PCD;
			FUNC5();

			tmp = *(int *)ptr;
			/*
			 * Test for alternating 1's and 0's
			 */
			*(volatile int *)ptr = 0xaaaaaaaa;
			if (*(volatile int *)ptr != 0xaaaaaaaa)
				page_bad = TRUE;
			/*
			 * Test for alternating 0's and 1's
			 */
			*(volatile int *)ptr = 0x55555555;
			if (*(volatile int *)ptr != 0x55555555)
				page_bad = TRUE;
			/*
			 * Test for all 1's
			 */
			*(volatile int *)ptr = 0xffffffff;
			if (*(volatile int *)ptr != 0xffffffff)
				page_bad = TRUE;
			/*
			 * Test for all 0's
			 */
			*(volatile int *)ptr = 0x0;
			if (*(volatile int *)ptr != 0x0)
				page_bad = TRUE;
			/*
			 * Restore original value.
			 */
			*(int *)ptr = tmp;

skip_memtest:
			/*
			 * Adjust array of valid/good pages.
			 */
			if (page_bad == TRUE)
				continue;
			/*
			 * If this good page is a continuation of the
			 * previous set of good pages, then just increase
			 * the end pointer. Otherwise start a new chunk.
			 * Note that "end" points one higher than end,
			 * making the range >= start and < end.
			 * If we're also doing a speculative memory
			 * test and we at or past the end, bump up Maxmem
			 * so that we keep going. The first bad page
			 * will terminate the loop.
			 */
			if (phys_avail[pa_indx] == pa) {
				phys_avail[pa_indx] += PAGE_SIZE;
			} else {
				pa_indx++;
				if (pa_indx == PHYS_AVAIL_ENTRIES) {
					FUNC7(
		"Too many holes in the physical address space, giving up\n");
					pa_indx--;
					full = TRUE;
					goto do_dump_avail;
				}
				phys_avail[pa_indx++] = pa;	/* start */
				phys_avail[pa_indx] = pa + PAGE_SIZE; /* end */
			}
			physmem++;
do_dump_avail:
			if (dump_avail[da_indx] == pa) {
				dump_avail[da_indx] += PAGE_SIZE;
			} else {
				da_indx++;
				if (da_indx == PHYS_AVAIL_ENTRIES) {
					da_indx--;
					goto do_next;
				}
				dump_avail[da_indx++] = pa; /* start */
				dump_avail[da_indx] = pa + PAGE_SIZE; /* end */
			}
do_next:
			if (full)
				break;
		}
	}
	*pte = 0;
	FUNC5();
	if (memtest != 0)
		FUNC7("\n");

	/*
	 * XXX
	 * The last chunk must contain at least one page plus the message
	 * buffer to avoid complicating other code (message buffer address
	 * calculation, etc.).
	 */
	while (phys_avail[pa_indx - 1] + PAGE_SIZE +
	    FUNC9(msgbufsize) >= phys_avail[pa_indx]) {
		physmem -= FUNC2(phys_avail[pa_indx] - phys_avail[pa_indx - 1]);
		phys_avail[pa_indx--] = 0;
		phys_avail[pa_indx--] = 0;
	}

	Maxmem = FUNC2(phys_avail[pa_indx]);

	/* Trim off space for the message buffer. */
	phys_avail[pa_indx] -= FUNC9(msgbufsize);

	/* Map the message buffer. */
	msgbufp = (struct msgbuf *)FUNC0(phys_avail[pa_indx]);
}