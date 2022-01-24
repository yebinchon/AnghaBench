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
struct tegra124_init_item {scalar_t__ frequency; scalar_t__ enable; int /*<<< orphan*/  name; int /*<<< orphan*/ * parent; } ;
struct tegra124_car_softc {int /*<<< orphan*/  dev; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 struct tegra124_init_item* clk_init_table ; 
 int FUNC0 (struct clknode*) ; 
 struct clknode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clknode*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct clknode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (struct tegra124_init_item*) ; 

__attribute__((used)) static void
FUNC6(struct tegra124_car_softc *sc)
{
	int i;
	struct tegra124_init_item *tbl;
	struct clknode *clknode;
	int rv;

	for (i = 0; i < FUNC5(clk_init_table); i++) {
		tbl = &clk_init_table[i];

		clknode =  FUNC1(tbl->name);
		if (clknode == NULL) {
			FUNC4(sc->dev, "Cannot find clock %s\n",
			    tbl->name);
			continue;
		}
		if (tbl->parent != NULL) {
			rv = FUNC3(clknode, tbl->parent);
			if (rv != 0) {
				FUNC4(sc->dev,
				    "Cannot set parent for %s (to %s): %d\n",
				    tbl->name, tbl->parent, rv);
				continue;
			}
		}
		if (tbl->frequency != 0) {
			rv = FUNC2(clknode, tbl->frequency, 0 , 9999);
			if (rv != 0) {
				FUNC4(sc->dev,
				    "Cannot set frequency for %s: %d\n",
				    tbl->name, rv);
				continue;
			}
		}
		if (tbl->enable!= 0) {
			rv = FUNC0(clknode);
			if (rv != 0) {
				FUNC4(sc->dev,
				    "Cannot enable %s: %d\n", tbl->name, rv);
				continue;
			}
		}
	}
}