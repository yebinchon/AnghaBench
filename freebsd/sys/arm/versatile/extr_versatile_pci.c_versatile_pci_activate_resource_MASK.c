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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int ENXIO ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	vm_offset_t vaddr;
	int res;

	switch(type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		vaddr = (vm_offset_t)FUNC2(FUNC5(r),
				FUNC4(r));
		FUNC6(r, vaddr);
		FUNC7(r, fdtbus_bs_tag);
		res = FUNC3(r);
		break;
	case SYS_RES_IRQ:
		res = (FUNC0(FUNC1(bus),
		    child, type, rid, r));
		break;
	default:
		res = ENXIO;
		break;
	}

	return (res);
}