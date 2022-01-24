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
struct ccp_softc {int /*<<< orphan*/ * pci_resource; int /*<<< orphan*/  pci_bus_handle; int /*<<< orphan*/  pci_bus_tag; void* pci_resource_id; int /*<<< orphan*/ * pci_resource_msix; void* pci_resource_id_msix; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 struct ccp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ccp_softc *sc;

	sc = FUNC3(dev);

	sc->pci_resource_id = FUNC0(2);
	sc->pci_resource = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->pci_resource_id, RF_ACTIVE);
	if (sc->pci_resource == NULL) {
		FUNC4(dev, "unable to allocate pci resource\n");
		return (ENODEV);
	}

	sc->pci_resource_id_msix = FUNC0(5);
	sc->pci_resource_msix = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->pci_resource_id_msix, RF_ACTIVE);
	if (sc->pci_resource_msix == NULL) {
		FUNC4(dev, "unable to allocate pci resource msix\n");
		FUNC2(dev, SYS_RES_MEMORY, sc->pci_resource_id,
		    sc->pci_resource);
		return (ENODEV);
	}

	sc->pci_bus_tag = FUNC6(sc->pci_resource);
	sc->pci_bus_handle = FUNC5(sc->pci_resource);
	return (0);
}