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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	bus_size_t psize;
	bus_space_handle_t vaddr;

	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		psize = (bus_size_t)FUNC5(r);
		vaddr = FUNC4(r);

		if (vaddr != 0) {
#ifdef FDT
			bus_space_unmap(fdtbus_bs_tag, vaddr, psize);
#else
			FUNC2((vm_offset_t)vaddr, (vm_size_t)psize);
#endif
			FUNC7(r, NULL);
			FUNC6(r, 0);
		}
	} else if (type == SYS_RES_IRQ) {
#ifdef INTRNG
		intr_deactivate_irq(child, r);
#endif
	}

	return (FUNC3(r));
}