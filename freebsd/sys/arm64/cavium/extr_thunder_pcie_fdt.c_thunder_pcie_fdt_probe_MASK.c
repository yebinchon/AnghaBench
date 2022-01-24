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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  CPU_IMPL_CAVIUM ; 
 int CPU_IMPL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CPU_PART_MASK ; 
 int /*<<< orphan*/  CPU_PART_THUNDERX ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	/* Check if we're running on Cavium ThunderX */
	if (!FUNC0(CPU_IMPL_MASK | CPU_PART_MASK,
	    CPU_IMPL_CAVIUM, CPU_PART_THUNDERX, 0, 0))
		return (ENXIO);

	if (!FUNC3(dev))
		return (ENXIO);

	if (FUNC2(dev, "pci-host-ecam-generic") ||
	    FUNC2(dev, "cavium,thunder-pcie") ||
	    FUNC2(dev, "cavium,pci-host-thunder-ecam")) {
		FUNC1(dev, "Cavium Integrated PCI/PCI-E Controller");
		return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}