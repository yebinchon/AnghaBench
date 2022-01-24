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
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  memmap_bus ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	int err;
	bus_addr_t paddr;
	bus_size_t psize;
	bus_space_handle_t vaddr;

	if ((err = FUNC2(r)) != 0)
		return (err);

	/*
	 * If this is a memory resource, map it into the kernel.
	 */
	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		paddr = (bus_addr_t)FUNC5(r);
		psize = (bus_size_t)FUNC4(r);
		err = FUNC0(&memmap_bus, paddr, psize, 0, &vaddr);
		if (err != 0) {
			FUNC3(r);
			return (err);
		}
		FUNC7(r, &memmap_bus);
		FUNC8(r, (void *)vaddr);
		FUNC6(r, vaddr);
	} else if (type == SYS_RES_IRQ) {
		err = FUNC1(child, r);
		if (err != 0) {
			FUNC3(r);
			return (err);
		}
	}
	return (0);
}