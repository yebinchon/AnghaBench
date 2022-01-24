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

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_CN30XX ; 
 int /*<<< orphan*/  OCTEON_CN31XX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
 int /*<<< orphan*/  OCTEON_CNF71XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
    if (FUNC0(OCTEON_CN30XX))
        return 64;
    else if (FUNC0(OCTEON_CN31XX) || FUNC0(OCTEON_CN50XX))
        return 256;
    else if (FUNC0(OCTEON_CN52XX)
             || FUNC0(OCTEON_CN61XX)
             || FUNC0(OCTEON_CNF71XX))
        return 512;
    else if (FUNC0(OCTEON_CN63XX) || FUNC0(OCTEON_CN66XX))
	return 1024;
    else
        return 2048;
}