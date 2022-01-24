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
struct resource {int dummy; } ;
struct mv_pcib_softc {int /*<<< orphan*/  ap_segment; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int PCI_RES_BUS ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mv_pcib_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
#ifdef PCI_RES_BUS
	struct mv_pcib_softc *sc = device_get_softc(dev);

	if (type == PCI_RES_BUS)
		return (pci_domain_release_bus(sc->ap_segment, child, rid, res));
#endif
	if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY)
		return (FUNC0(FUNC1(dev), child,
		    type, rid, res));

	return (FUNC4(res));
}