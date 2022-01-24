#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clknode {int dummy; } ;
struct aw_ccung_softc {int n_clk_init; TYPE_1__* clk_init; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ enable; int /*<<< orphan*/  default_freq; int /*<<< orphan*/ * parent_name; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int FUNC0 (struct clknode*) ; 
 struct clknode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clknode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clknode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC5(struct aw_ccung_softc *sc)
{
	struct clknode *clknode;
	int i, error;

	for (i = 0; i < sc->n_clk_init; i++) {
		clknode = FUNC1(sc->clk_init[i].name);
		if (clknode == NULL) {
			FUNC4(sc->dev, "Cannot find clock %s\n",
			    sc->clk_init[i].name);
			continue;
		}

		if (sc->clk_init[i].parent_name != NULL) {
			if (bootverbose)
				FUNC4(sc->dev, "Setting %s as parent for %s\n",
				    *sc->clk_init[i].parent_name,
				    sc->clk_init[i].name);
			error = FUNC3(clknode,
			    sc->clk_init[i].parent_name);
			if (error != 0) {
				FUNC4(sc->dev,
				    "Cannot set parent to %s for %s\n",
				    *sc->clk_init[i].parent_name,
				    sc->clk_init[i].name);
				continue;
			}
		}
		if (sc->clk_init[i].default_freq != 0) {
			if (bootverbose)
				FUNC4(sc->dev,
				    "Setting freq %ju for %s\n",
				    sc->clk_init[i].default_freq,
				    sc->clk_init[i].name);
			error = FUNC2(clknode,
			    sc->clk_init[i].default_freq, 0 , 0);
			if (error != 0) {
				FUNC4(sc->dev,
				    "Cannot set frequency for %s to %ju\n",
				    sc->clk_init[i].name,
				    sc->clk_init[i].default_freq);
				continue;
			}
		}
		if (sc->clk_init[i].enable) {
			error = FUNC0(clknode);
			if (error != 0) {
				FUNC4(sc->dev,
				    "Cannot enable %s\n",
				    sc->clk_init[i].name);
				continue;
			}
		}
	}
}