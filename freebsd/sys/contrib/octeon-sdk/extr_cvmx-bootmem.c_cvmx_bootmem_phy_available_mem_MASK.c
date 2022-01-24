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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  head_addr ; 

uint64_t FUNC5(uint64_t min_block_size)
{
    uint64_t addr;

    uint64_t available_mem = 0;

    FUNC1(0);
    addr = FUNC0(head_addr);
    while (addr)
    {
        if (FUNC4(addr) >= min_block_size)
            available_mem += FUNC4(addr);
        addr = FUNC3(addr);
    }
    FUNC2(0);
    return(available_mem);

}