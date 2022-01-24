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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_SPAR0 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR1 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR2 ; 
 int /*<<< orphan*/  CVMX_L2C_SPAR3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(uint32_t core, uint32_t mask)
{
    uint32_t field;
    uint32_t valid_mask;

    valid_mask = (0x1 << FUNC2()) - 1;

    mask &= valid_mask;

    /* A UMSK setting which blocks all L2C Ways is an error on some chips */
    if (mask == valid_mask && (FUNC1(OCTEON_CN3XXX) || FUNC1(OCTEON_CN5XXX)))
        return -1;

    /* Validate the core number */
    if (core >= FUNC3())
        return -1;

    if (FUNC1(OCTEON_CN6XXX) || FUNC1(OCTEON_CNF7XXX)) {
        FUNC5(FUNC0(core), mask);
        return 0;
    }

    /*
     * Use the lower two bits of core to determine the bit offset of the
     * UMSK[] field in the L2C_SPAR register.
     */
    field = (core & 0x3) * 8;

    /*
     * Assign the new mask setting to the UMSK[] field in the appropriate
     * L2C_SPAR register based on the core_num.
     *
     */
    switch (core & 0xC) {
    case 0x0:
        FUNC5(CVMX_L2C_SPAR0,
                   (FUNC4(CVMX_L2C_SPAR0) & ~(0xFF << field)) |
                   mask << field);
        break;
    case 0x4:
        FUNC5(CVMX_L2C_SPAR1,
                   (FUNC4(CVMX_L2C_SPAR1) & ~(0xFF << field)) |
                   mask << field);
        break;
    case 0x8:
        FUNC5(CVMX_L2C_SPAR2,
                   (FUNC4(CVMX_L2C_SPAR2) & ~(0xFF << field)) |
                   mask << field);
        break;
    case 0xC:
        FUNC5(CVMX_L2C_SPAR3,
                   (FUNC4(CVMX_L2C_SPAR3) & ~(0xFF << field)) |
                   mask << field);
        break;
    }
    return 0;
}