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
typedef  int /*<<< orphan*/  uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; int /*<<< orphan*/  base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk805_reg_sc*,char*,char*,int /*<<< orphan*/ ) ; 
 struct rk805_reg_sc* FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct regnode *regnode, bool enable, int *udelay)
{
	struct rk805_reg_sc *sc;
	uint8_t val;

	sc = FUNC1(regnode);

	FUNC0(sc, "%sabling regulator %s\n",
	    enable ? "En" : "Dis",
	    sc->def->name);
	FUNC2(sc->base_dev, sc->def->enable_reg, &val, 1);
	if (enable)
		val |= sc->def->enable_mask;
	else
		val &= ~sc->def->enable_mask;
	FUNC3(sc->base_dev, sc->def->enable_reg, val);

	*udelay = 0;

	return (0);
}