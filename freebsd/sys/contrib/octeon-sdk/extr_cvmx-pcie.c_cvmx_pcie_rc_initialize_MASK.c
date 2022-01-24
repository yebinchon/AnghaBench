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
 int /*<<< orphan*/  CVMX_ERROR_GROUP_PCI ; 
 int /*<<< orphan*/  OCTEON_FEATURE_NPEI ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int pcie_port)
{
    int result;
    if (FUNC3(OCTEON_FEATURE_NPEI))
        result = FUNC0(pcie_port);
    else
        result = FUNC1(pcie_port);
#if (!defined(CVMX_BUILD_FOR_LINUX_KERNEL) && !defined(CVMX_BUILD_FOR_FREEBSD_KERNEL)) || defined(CONFIG_CAVIUM_DECODE_RSL)
    if (result == 0)
        FUNC2(CVMX_ERROR_GROUP_PCI, pcie_port);
#endif
    return result;
}