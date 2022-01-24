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
typedef  int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_nmm_sc {int flags; int gate_shift; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int AW_CLK_HAS_GATE ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ,int) ; 
 struct aw_clk_nmm_sc* FUNC4 (struct clknode*) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, bool enable)
{
	struct aw_clk_nmm_sc *sc;
	uint32_t val;

	sc = FUNC4(clk);

	if ((sc->flags & AW_CLK_HAS_GATE) == 0)
		return (0);

	FUNC0(clk);
	FUNC2(clk, sc->offset, &val);
	if (enable)
		val |= (1 << sc->gate_shift);
	else
		val &= ~(1 << sc->gate_shift);
	FUNC3(clk, sc->offset, val);
	FUNC1(clk);

	return (0);
}