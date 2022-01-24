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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ULL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head_addr ; 

int FUNC10(uint64_t phy_addr, uint64_t size, uint32_t flags)
{
    uint64_t cur_addr;
    uint64_t prev_addr = 0;  /* zero is invalid */
    int retval = 0;

#ifdef DEBUG
    cvmx_dprintf("__cvmx_bootmem_phy_free addr: 0x%llx, size: 0x%llx\n", (ULL)phy_addr, (ULL)size);
#endif
    if (FUNC2(0))
        return(0);

    /* 0 is not a valid size for this allocator */
    if (!size)
        return(0);


    FUNC3(flags);
    cur_addr = FUNC0(head_addr);
    if (cur_addr == 0 || phy_addr < cur_addr)
    {
        /* add at front of list - special case with changing head ptr */
        if (cur_addr && phy_addr + size > cur_addr)
            goto bootmem_free_done; /* error, overlapping section */
        else if (phy_addr + size == cur_addr)
        {
            /* Add to front of existing first block */
            FUNC7(phy_addr, FUNC5(cur_addr));
            FUNC8(phy_addr, FUNC6(cur_addr) + size);
            FUNC1(head_addr, phy_addr);

        }
        else
        {
            /* New block before first block */
            FUNC7(phy_addr, cur_addr);  /* OK if cur_addr is 0 */
            FUNC8(phy_addr, size);
            FUNC1(head_addr, phy_addr);
        }
        retval = 1;
        goto bootmem_free_done;
    }

    /* Find place in list to add block */
    while (cur_addr && phy_addr > cur_addr)
    {
        prev_addr = cur_addr;
        cur_addr = FUNC5(cur_addr);
    }

    if (!cur_addr)
    {
        /* We have reached the end of the list, add on to end, checking
        ** to see if we need to combine with last block
        **/
        if (prev_addr +  FUNC6(prev_addr) == phy_addr)
        {
            FUNC8(prev_addr, FUNC6(prev_addr) + size);
        }
        else
        {
            FUNC7(prev_addr, phy_addr);
            FUNC8(phy_addr, size);
            FUNC7(phy_addr, 0);
        }
        retval = 1;
        goto bootmem_free_done;
    }
    else
    {
        /* insert between prev and cur nodes, checking for merge with either/both */

        if (prev_addr +  FUNC6(prev_addr) == phy_addr)
        {
            /* Merge with previous */
            FUNC8(prev_addr, FUNC6(prev_addr) + size);
            if (phy_addr + size == cur_addr)
            {
                /* Also merge with current */
                FUNC8(prev_addr, FUNC6(cur_addr) + FUNC6(prev_addr));
                FUNC7(prev_addr, FUNC5(cur_addr));
            }
            retval = 1;
            goto bootmem_free_done;
        }
        else if (phy_addr + size == cur_addr)
        {
            /* Merge with current */
            FUNC8(phy_addr, FUNC6(cur_addr) + size);
            FUNC7(phy_addr, FUNC5(cur_addr));
            FUNC7(prev_addr, phy_addr);
            retval = 1;
            goto bootmem_free_done;
        }

        /* It is a standalone block, add in between prev and cur */
        FUNC8(phy_addr, size);
        FUNC7(phy_addr, cur_addr);
        FUNC7(prev_addr, phy_addr);


    }
    retval = 1;

bootmem_free_done:
    FUNC4(flags);
    return(retval);

}