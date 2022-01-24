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
struct hwmod {int clock_id; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int clk_ident_t ;

/* Variables and functions */
 int INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**) ; 
 struct hwmod* ti_hwmods ; 

clk_ident_t
FUNC6(device_t dev)
{
	phandle_t node;
	int len, l;
	char *name;
	char *buf;
	int clk;
	struct hwmod *hw;

	if ((node = FUNC2(dev)) == 0)
		return (INVALID_CLK_IDENT);

	if ((len = FUNC5(node, (void **)&name)) <= 0)
		return (INVALID_CLK_IDENT);

	buf = name;

	clk = INVALID_CLK_IDENT;
	while ((len > 0) && (clk == INVALID_CLK_IDENT)) {
		for (hw = ti_hwmods; hw->name != NULL; ++hw) {
			if (FUNC3(hw->name, name) == 0) {
				clk = hw->clock_id;
				break;
			}
		}

		/* Slide to the next sub-string. */
		l = FUNC4(name) + 1;
		name += l;
		len -= l;
	}

	if (len > 0)
		FUNC1(dev, "WARNING: more than one ti,hwmod \n");

	FUNC0(buf);
	return (clk);
}