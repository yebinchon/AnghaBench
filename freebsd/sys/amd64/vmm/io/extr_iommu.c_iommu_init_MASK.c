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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int PCI_BUSMAX ; 
 int PCI_FUNCMAX ; 
 int PCI_SLOTMAX ; 
 void* add_tag ; 
 void* delete_tag ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * host_domain ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int iommu_avail ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_enable ; 
 int /*<<< orphan*/  iommu_ops_amd ; 
 int /*<<< orphan*/  iommu_ops_intel ; 
 int /*<<< orphan*/  iommu_pci_add ; 
 int /*<<< orphan*/  iommu_pci_delete ; 
 int /*<<< orphan*/ * ops ; 
 int /*<<< orphan*/  pci_add_device ; 
 int /*<<< orphan*/  pci_delete_device ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15(void)
{
	int error, bus, slot, func;
	vm_paddr_t maxaddr;
	devclass_t dc;
	device_t dev;

	if (!iommu_enable)
		return;

	if (FUNC13())
		ops = &iommu_ops_intel;
	else if (FUNC12())
		ops = &iommu_ops_amd;
	else
		ops = NULL;

	error = FUNC4();
	if (error)
		return;

	iommu_avail = 1;

	/*
	 * Create a domain for the devices owned by the host
	 */
	maxaddr = FUNC14();
	host_domain = FUNC2(maxaddr);
	if (host_domain == NULL) {
		FUNC11("iommu_init: unable to create a host domain");
		FUNC1();
		ops = NULL;
		iommu_avail = 0;
		return;
	}

	/*
	 * Create 1:1 mappings from '0' to 'maxaddr' for devices assigned to
	 * the host
	 */
	FUNC8(host_domain, 0, 0, maxaddr);

	add_tag = FUNC0(pci_add_device, iommu_pci_add, NULL, 0);
	delete_tag = FUNC0(pci_delete_device, iommu_pci_delete,
	    NULL, 0);
	dc = FUNC5("ppt");
	for (bus = 0; bus <= PCI_BUSMAX; bus++) {
		for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
			for (func = 0; func <= PCI_FUNCMAX; func++) {
				dev = FUNC9(0, bus, slot, func);
				if (dev == NULL)
					continue;

				/* Skip passthrough devices. */
				if (dc != NULL &&
				    FUNC6(dev) == dc)
					continue;

				/*
				 * Everything else belongs to the host
				 * domain.
				 */
				FUNC7(host_domain,
				    FUNC10(dev));
			}
		}
	}
	FUNC3();

}