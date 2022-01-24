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
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
#if defined(OCTEON_VENDOR_GEFES)
    return 0; /* none of the GEFES boards have mgmt ports */
#else
    if (FUNC0(OCTEON_CN56XX) || FUNC0(OCTEON_CN68XX))
        return 1;
    else if (FUNC0(OCTEON_CN52XX) || FUNC0(OCTEON_CN6XXX))
        return 2;
    else
        return 0;
#endif
}