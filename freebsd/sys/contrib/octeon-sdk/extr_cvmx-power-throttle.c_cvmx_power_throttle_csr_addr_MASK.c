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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CVMX_MAX_CORES ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static uint64_t FUNC3(int ppid)
{
    if (FUNC1(OCTEON_CN6XXX))
    {
        uint64_t csr_addr, reg_num, reg_reg, reg_sel;

        FUNC2(ppid < CVMX_MAX_CORES);

        /*
         * register 11 selection 6
         */
        reg_reg = 11;
        reg_sel = 6;
        reg_num = (ppid << 8) + (reg_reg << 3) + reg_sel;
        csr_addr = FUNC0(0) + ((reg_num) << 3);

        return csr_addr;
    }
    return 0;
}