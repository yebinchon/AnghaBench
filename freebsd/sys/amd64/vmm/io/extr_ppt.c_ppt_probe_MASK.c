#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hdrtype; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int PCIM_HDRTYPE ; 
 int PCIM_HDRTYPE_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int bus, slot, func;
	struct pci_devinfo *dinfo;

	dinfo = (struct pci_devinfo *)FUNC0(dev);

	bus = FUNC1(dev);
	slot = FUNC3(dev);
	func = FUNC2(dev);

	/*
	 * To qualify as a pci passthrough device a device must:
	 * - be allowed by administrator to be used in this role
	 * - be an endpoint device
	 */
	if ((dinfo->cfg.hdrtype & PCIM_HDRTYPE) != PCIM_HDRTYPE_NORMAL)
		return (ENXIO);
	else if (FUNC4(bus, slot, func))
		return (0);
	else
		/*
		 * Returning BUS_PROBE_NOWILDCARD here matches devices that the
		 * SR-IOV infrastructure specified as "ppt" passthrough devices.
		 * All normal devices that did not have "ppt" specified as their
		 * driver will not be matched by this.
		 */
		return (BUS_PROBE_NOWILDCARD);
}