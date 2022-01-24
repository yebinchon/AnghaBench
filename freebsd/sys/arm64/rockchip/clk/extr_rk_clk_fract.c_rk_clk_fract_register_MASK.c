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
struct rk_clk_fract_sc {int /*<<< orphan*/  offset; int /*<<< orphan*/  flags; } ;
struct rk_clk_fract_def {int /*<<< orphan*/  offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  clkdef; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;

/* Variables and functions */
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rk_clk_fract_sc* FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*,struct clknode*) ; 
 int /*<<< orphan*/  rk_clk_fract_class ; 

int
FUNC3(struct clkdom *clkdom, struct rk_clk_fract_def *clkdef)
{
	struct clknode *clk;
	struct rk_clk_fract_sc *sc;

	clk = FUNC0(clkdom, &rk_clk_fract_class, &clkdef->clkdef);
	if (clk == NULL)
		return (1);

	sc = FUNC1(clk);
	sc->flags = clkdef->flags;
	sc->offset = clkdef->offset;

	FUNC2(clkdom, clk);
	return (0);
}