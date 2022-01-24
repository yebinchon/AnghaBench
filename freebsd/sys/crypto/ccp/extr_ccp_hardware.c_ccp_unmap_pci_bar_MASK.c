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
struct ccp_softc {int /*<<< orphan*/  pci_resource; int /*<<< orphan*/  pci_resource_id; int /*<<< orphan*/  pci_resource_msix; int /*<<< orphan*/  pci_resource_id_msix; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ccp_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct ccp_softc *sc;

	sc = FUNC1(dev);

	FUNC0(dev, SYS_RES_MEMORY, sc->pci_resource_id_msix,
	    sc->pci_resource_msix);
	FUNC0(dev, SYS_RES_MEMORY, sc->pci_resource_id,
	    sc->pci_resource);
}