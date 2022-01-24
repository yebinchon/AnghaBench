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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  paddr ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_SWWARMRSTREQ ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(bus_size_t reg)
{
	uint32_t paddr;
	bus_addr_t vaddr;
	phandle_t node;

	if (FUNC4(reg) == 0)
		goto end;

	node = FUNC0("/soc/rstmgr");
	if (node == -1)
		goto end;

	if ((FUNC1(node, "reg", &paddr, sizeof(paddr))) > 0) {
		if (FUNC2(fdtbus_bs_tag, paddr, 0x8, 0, &vaddr) == 0) {
			FUNC3(fdtbus_bs_tag, vaddr,
			    reg, CTRL_SWWARMRSTREQ);
		}
	}

end:
	while (1);
}