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
struct syscon {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct syscon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct syscon*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct syscon**) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	phandle_t node;
	struct syscon *grf = NULL;

	node = FUNC2(dev);
	if (FUNC0(node, "rockchip,grf") &&
	    FUNC6(dev, node,
	    "rockchip,grf", &grf) != 0) {
		FUNC1(dev, "cannot get grf driver handle\n");
		return (ENXIO);
	}

#ifdef notyet
	if (ofw_bus_is_compatible(dev, "rockchip,rk3399-gmac"))
	    rk3399_set_delays(grf, node);
	else if (ofw_bus_is_compatible(dev, "rockchip,rk3328-gmac"))
	    rk3328_set_delays(grf, node);
#endif

	/* Mode should be set according to dtb property */

	return (0);
}