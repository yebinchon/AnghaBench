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
typedef  int uint64_t ;
typedef  int u_long ;

/* Variables and functions */
 int CPUID_PAT ; 
 int CR0_CD ; 
 int CR0_NW ; 
 int CR4_PGE ; 
 int /*<<< orphan*/  MSR_PAT ; 
 int PAT_INDEX_SIZE ; 
 size_t PAT_UNCACHEABLE ; 
 size_t PAT_UNCACHED ; 
 int FUNC0 (int,size_t) ; 
 size_t PAT_WRITE_BACK ; 
 size_t PAT_WRITE_COMBINING ; 
 size_t PAT_WRITE_PROTECTED ; 
 size_t PAT_WRITE_THROUGH ; 
 int cpu_feature ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int* pat_index ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(void)
{
	uint64_t pat_msr;
	u_long cr0, cr4;
	int i;

	/* Bail if this CPU doesn't implement PAT. */
	if ((cpu_feature & CPUID_PAT) == 0)
		FUNC4("no PAT??");

	/* Set default PAT index table. */
	for (i = 0; i < PAT_INDEX_SIZE; i++)
		pat_index[i] = -1;
	pat_index[PAT_WRITE_BACK] = 0;
	pat_index[PAT_WRITE_THROUGH] = 1;
	pat_index[PAT_UNCACHEABLE] = 3;
	pat_index[PAT_WRITE_COMBINING] = 6;
	pat_index[PAT_WRITE_PROTECTED] = 5;
	pat_index[PAT_UNCACHED] = 2;

	/*
	 * Initialize default PAT entries.
	 * Leave the indices 0-3 at the default of WB, WT, UC-, and UC.
	 * Program 5 and 6 as WP and WC.
	 *
	 * Leave 4 and 7 as WB and UC.  Note that a recursive page table
	 * mapping for a 2M page uses a PAT value with the bit 3 set due
	 * to its overload with PG_PS.
	 */
	pat_msr = FUNC0(0, PAT_WRITE_BACK) |
	    FUNC0(1, PAT_WRITE_THROUGH) |
	    FUNC0(2, PAT_UNCACHED) |
	    FUNC0(3, PAT_UNCACHEABLE) |
	    FUNC0(4, PAT_WRITE_BACK) |
	    FUNC0(5, PAT_WRITE_PROTECTED) |
	    FUNC0(6, PAT_WRITE_COMBINING) |
	    FUNC0(7, PAT_UNCACHEABLE);

	/* Disable PGE. */
	cr4 = FUNC6();
	FUNC3(cr4 & ~CR4_PGE);

	/* Disable caches (CD = 1, NW = 0). */
	cr0 = FUNC5();
	FUNC2((cr0 & ~CR0_NW) | CR0_CD);

	/* Flushes caches and TLBs. */
	FUNC7();
	FUNC1();

	/* Update PAT and index table. */
	FUNC8(MSR_PAT, pat_msr);

	/* Flush caches and TLBs again. */
	FUNC7();
	FUNC1();

	/* Restore caches and PGE. */
	FUNC2(cr0);
	FUNC3(cr4);
}