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
typedef  int u_int ;
struct rman {int dummy; } ;
struct versatile_pci_softc {struct rman mem_rman; struct rman io_rman; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct versatile_pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 struct resource* FUNC6 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC8(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

	struct versatile_pci_softc *sc = FUNC3(bus);
	struct resource *rv;
	struct rman *rm;

	FUNC4("Alloc resources %d, %08lx..%08lx, %ld\n", type, start, end, count);

	switch (type) {
	case SYS_RES_IOPORT:
		rm = &sc->io_rman;
		break;
	case SYS_RES_IRQ:
		rm = NULL;
		break;
	case SYS_RES_MEMORY:
		rm = &sc->mem_rman;
		break;
	default:
		return (NULL);
	}

	if (rm == NULL)
		return (FUNC0(FUNC2(bus),
		    child, type, rid, start, end, count, flags));

	rv = FUNC6(rm, start, end, count, flags, child);
	if (rv == NULL)
		return (NULL);

	FUNC7(rv, *rid);

	if (flags & RF_ACTIVE) {
		if (FUNC1(child, type, *rid, rv)) {
			FUNC5(rv);
			return (NULL);
		}
	}
	return (rv);
}