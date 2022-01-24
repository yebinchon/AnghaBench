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
typedef  int /*<<< orphan*/  platform_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MODIFY_AUX_CORE_0 ; 
 int /*<<< orphan*/  WRITE_AUX_CORE_1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 

void    
FUNC8(platform_t plat)
{
	bus_addr_t scu_addr;

	if (FUNC0(fdtbus_bs_tag, 0x48240000, 0x1000, 0, &scu_addr) != 0)
		FUNC4("Couldn't map the SCU\n");
	/* Enable the SCU */
	*(volatile unsigned int *)scu_addr |= 1;
	//*(volatile unsigned int *)(scu_addr + 0x30) |= 1;
	FUNC2();

	FUNC7(0x200, 0xfffffdff, MODIFY_AUX_CORE_0);
	FUNC7(FUNC5((vm_offset_t)mpentry), 0, WRITE_AUX_CORE_1);
	FUNC3();
	FUNC6();
	FUNC1(fdtbus_bs_tag, scu_addr, 0x1000);
}