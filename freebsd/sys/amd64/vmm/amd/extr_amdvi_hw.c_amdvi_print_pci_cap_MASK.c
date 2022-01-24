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
struct amdvi_softc {int cap_off; int pci_cap; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct amdvi_softc*,int) ; 
 struct amdvi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct amdvi_softc *softc;
	uint32_t off, cap;


	softc = FUNC2(dev);
	off = softc->cap_off;

	/*
	 * Section 3.7.1 of IOMMU sepc rev 2.0.
	 * Read capability from device.
	 */
	cap = FUNC1(softc, off);

	/* Make sure capability type[18:16] is 3. */
	FUNC0((((cap >> 16) & 0x7) == 0x3),
	    ("Not a IOMMU capability 0x%x@0x%x", cap, off));

	softc->pci_cap = cap >> 24;
	FUNC3(softc->dev, "PCI cap 0x%x@0x%x feature:%b\n",
	    cap, off, softc->pci_cap,
	    "\20\1IOTLB\2HT\3NPCache\4EFR\5CapExt");

	return (0);
}