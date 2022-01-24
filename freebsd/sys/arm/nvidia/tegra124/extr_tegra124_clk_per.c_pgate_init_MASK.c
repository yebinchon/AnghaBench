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
struct pgate_sc {int idx; int enabled; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pgate_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgate_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgate_sc*,int /*<<< orphan*/ ,int*) ; 
 struct pgate_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct clknode *clk, device_t dev)
{
	struct pgate_sc *sc;
	uint32_t ena_reg, rst_reg, mask;

	sc = FUNC3(clk);
	mask = 1 << (sc->idx % 32);

	FUNC0(sc);
	FUNC2(sc, FUNC5(sc->idx), &ena_reg);
	FUNC2(sc, FUNC6(sc->idx), &rst_reg);
	FUNC1(sc);

	sc->enabled = ena_reg & mask ? 1 : 0;
	FUNC4(clk, 0);

	return(0);
}