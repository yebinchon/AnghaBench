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
struct pll_sc {scalar_t__ type; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLL_E ; 
 struct pll_sc* FUNC0 (struct clknode*) ; 
 int FUNC1 (struct pll_sc*) ; 
 int FUNC2 (struct pll_sc*) ; 
 int FUNC3 (struct pll_sc*) ; 

__attribute__((used)) static int
FUNC4(struct clknode *clknode, bool enable)
{
	int rv;
	struct pll_sc *sc;

	sc = FUNC0(clknode);
	if (enable == 0) {
		rv = FUNC1(sc);
		return(rv);
	}

	if (sc->type == PLL_E)
		rv = FUNC3(sc);
	else
		rv = FUNC2(sc);
	return (rv);
}