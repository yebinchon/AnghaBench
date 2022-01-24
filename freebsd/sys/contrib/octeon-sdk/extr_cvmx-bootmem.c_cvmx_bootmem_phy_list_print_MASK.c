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
typedef  int /*<<< orphan*/  ULL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cvmx_bootmem_desc_addr ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  head_addr ; 
 int /*<<< orphan*/  major_version ; 
 int /*<<< orphan*/  minor_version ; 

void FUNC4(void)
{
    uint64_t addr;

    addr = FUNC0(head_addr);
    FUNC3("\n\n\nPrinting bootmem block list, descriptor: 0x%llx,  head is 0x%llx\n",
           (ULL)cvmx_bootmem_desc_addr, (ULL)addr);
    FUNC3("Descriptor version: %d.%d\n",
        (int)FUNC0(major_version),
        (int)FUNC0(minor_version));
    if (FUNC0(major_version) > 3)
    {
        FUNC3("Warning: Bootmem descriptor version is newer than expected\n");
    }
    if (!addr)
    {
        FUNC3("mem list is empty!\n");
    }
    while (addr)
    {
        FUNC3("Block address: 0x%08llx, size: 0x%08llx, next: 0x%08llx\n",
               (ULL)addr,
               (ULL)FUNC2(addr),
               (ULL)FUNC1(addr));
        addr = FUNC1(addr);
    }
    FUNC3("\n\n");

}