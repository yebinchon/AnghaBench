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
struct thunder_pem_softc {int /*<<< orphan*/  ranges; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct thunder_pem_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memmap_bus ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 scalar_t__ FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	int err;
	bus_addr_t paddr;
	bus_size_t psize;
	bus_space_handle_t vaddr;
	struct thunder_pem_softc *sc;

	if ((err = FUNC3(r)) != 0)
		return (err);

	sc = FUNC1(dev);

	/*
	 * If this is a memory resource, map it into the kernel.
	 */
	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		paddr = (bus_addr_t)FUNC6(r);
		psize = (bus_size_t)FUNC5(r);

		paddr = FUNC2(sc->ranges, paddr);

		err = FUNC0(&memmap_bus, paddr, psize, 0, &vaddr);
		if (err != 0) {
			FUNC4(r);
			return (err);
		}
		FUNC8(r, &memmap_bus);
		FUNC9(r, (void *)vaddr);
		FUNC7(r, vaddr);
	}
	return (0);
}