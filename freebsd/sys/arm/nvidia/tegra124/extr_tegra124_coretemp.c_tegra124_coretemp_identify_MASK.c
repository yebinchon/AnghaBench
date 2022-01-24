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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(driver_t *driver, device_t parent)
{
	phandle_t root;

	root = FUNC1("/");
	if (!FUNC4(root, "nvidia,tegra124"))
		return;
	if (FUNC2(parent, "tegra124_coretemp", -1) != NULL)
		return;
	if (FUNC0(parent, 0, "tegra124_coretemp", -1) == NULL)
		FUNC3(parent, "add child failed\n");
}