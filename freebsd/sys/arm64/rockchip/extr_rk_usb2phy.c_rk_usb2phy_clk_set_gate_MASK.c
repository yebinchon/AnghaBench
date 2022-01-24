#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rk_usb2phy_clk_sc {TYPE_1__* regs; int /*<<< orphan*/  grf; } ;
struct clknode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  disable_mask; int /*<<< orphan*/  offset; int /*<<< orphan*/  enable_mask; } ;
struct TYPE_3__ {TYPE_2__ clk_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rk_usb2phy_clk_sc* FUNC1 (struct clknode*) ; 

__attribute__((used)) static int
FUNC2(struct clknode *clk, bool enable)
{
	struct rk_usb2phy_clk_sc *sc;

	sc = FUNC1(clk);

	if (enable)
		FUNC0(sc->grf, sc->regs->clk_ctl.offset,
		    sc->regs->clk_ctl.enable_mask);
	else
		FUNC0(sc->grf, sc->regs->clk_ctl.offset,
		    sc->regs->clk_ctl.disable_mask);
	return (0);
}