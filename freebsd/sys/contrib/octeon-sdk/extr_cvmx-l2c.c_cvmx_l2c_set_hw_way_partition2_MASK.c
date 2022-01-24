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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(uint32_t mask)
{
    uint32_t valid_mask;

        if (!FUNC1(OCTEON_CN68XX))
            return -1;

    valid_mask = (0x1 << FUNC2()) - 1;
    mask &= valid_mask;
        FUNC3(FUNC0(1), mask);
        return 0;
}