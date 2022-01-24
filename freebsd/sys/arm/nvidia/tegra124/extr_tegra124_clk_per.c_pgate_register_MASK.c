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
struct pgate_sc {int /*<<< orphan*/  flags; int /*<<< orphan*/  idx; int /*<<< orphan*/  clkdev; } ;
struct pgate_def {int /*<<< orphan*/  flags; int /*<<< orphan*/  idx; int /*<<< orphan*/  clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;

/* Variables and functions */
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 struct pgate_sc* FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 (struct clkdom*,struct clknode*) ; 
 int /*<<< orphan*/  tegra124_pgate_class ; 

__attribute__((used)) static int
FUNC4(struct clkdom *clkdom, struct pgate_def *clkdef)
{
	struct clknode *clk;
	struct pgate_sc *sc;

	clk = FUNC0(clkdom, &tegra124_pgate_class, &clkdef->clkdef);
	if (clk == NULL)
		return (1);

	sc = FUNC2(clk);
	sc->clkdev = FUNC1(clk);
	sc->idx = clkdef->idx;
	sc->flags = clkdef->flags;

	FUNC3(clkdom, clk);
	return (0);
}