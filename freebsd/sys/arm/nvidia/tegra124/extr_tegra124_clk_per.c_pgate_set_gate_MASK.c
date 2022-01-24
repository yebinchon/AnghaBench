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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pgate_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgate_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgate_sc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pgate_sc*,int,int*) ; 
 struct pgate_sc* FUNC5 (struct clknode*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct clknode *clk, bool enable)
{
	struct pgate_sc *sc;
	uint32_t reg, mask, base_reg;

	sc = FUNC5(clk);
	mask = 1 << (sc->idx % 32);
	sc->enabled = enable;
	base_reg = FUNC6(sc->idx);

	FUNC1(sc);
	FUNC3(sc, base_reg, mask, enable ? mask : 0);
	FUNC4(sc, base_reg, &reg);
	FUNC2(sc);

	FUNC0(2);
	return(0);
}