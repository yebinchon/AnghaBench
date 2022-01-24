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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC5(device_t dev)
{
	phandle_t node, phy_node;

	node = FUNC3(dev);
	/* Legacy binding */
	if (FUNC0(node, "allwinner,use-internal-phy"))
		return (true);

	phy_node = FUNC2(dev);
	return (phy_node != 0 && FUNC4(FUNC1(phy_node),
	    "allwinner,sun8i-h3-mdio-internal") != 0);
}