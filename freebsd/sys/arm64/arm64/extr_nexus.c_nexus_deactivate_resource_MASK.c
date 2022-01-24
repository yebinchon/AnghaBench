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

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  memmap_bus ; 
 int FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	bus_size_t psize;
	bus_space_handle_t vaddr;

	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		psize = (bus_size_t)FUNC4(r);
		vaddr = FUNC3(r);

		if (vaddr != 0) {
			FUNC0(&memmap_bus, vaddr, psize);
			FUNC6(r, NULL);
			FUNC5(r, 0);
		}
	} else if (type == SYS_RES_IRQ) {
		FUNC1(child, r);
	}

	return (FUNC2(r));
}