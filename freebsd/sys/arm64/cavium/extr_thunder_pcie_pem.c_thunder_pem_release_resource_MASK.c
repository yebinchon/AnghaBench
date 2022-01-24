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
struct thunder_pem_softc {int /*<<< orphan*/  id; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int PCI_RES_BUS ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thunder_pem_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
	device_t parent_dev;
#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	struct thunder_pem_softc *sc = device_get_softc(dev);

	if (type == PCI_RES_BUS)
		return (pci_domain_release_bus(sc->id, child, rid, res));
#endif
	/* Find parent device. On ThunderX we know an exact path. */
	parent_dev = FUNC1(FUNC1(dev));

	if ((type != SYS_RES_MEMORY) && (type != SYS_RES_IOPORT))
		return (FUNC0(parent_dev, child,
		    type, rid, res));

	return (FUNC4(res));
}