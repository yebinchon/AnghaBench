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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  memmap_bus ; 
 int FUNC1 (struct resource*) ; 
 scalar_t__ FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	bus_size_t psize;
	bus_space_handle_t vaddr;

	psize = (bus_size_t)FUNC3(r);
	vaddr = FUNC2(r);

	if (vaddr != 0) {
		FUNC0(&memmap_bus, vaddr, psize);
		FUNC5(r, NULL);
		FUNC4(r, 0);
	}

	return (FUNC1(r));
}