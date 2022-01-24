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
struct regnode {int dummy; } ;
struct axp8xx_reg_sc {TYPE_1__* def; int /*<<< orphan*/  base_dev; } ;
struct TYPE_2__ {scalar_t__ voltage_step1; int /*<<< orphan*/  voltage_reg; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENXIO ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct axp8xx_reg_sc*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regnode*) ; 
 struct axp8xx_reg_sc* FUNC4 (struct regnode*) ; 

__attribute__((used)) static int
FUNC5(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
	struct axp8xx_reg_sc *sc;
	uint8_t val;

	sc = FUNC4(regnode);

	if (bootverbose)
		FUNC2(sc->base_dev, "Setting %s (%s) to %d<->%d\n",
		    FUNC3(regnode),
		    sc->def->name,
		    min_uvolt, max_uvolt);

	if (sc->def->voltage_step1 == 0)
		return (ENXIO);

	if (FUNC0(sc, min_uvolt, max_uvolt, &val) != 0)
		return (ERANGE);

	FUNC1(sc->base_dev, sc->def->voltage_reg, val);

	*udelay = 0;

	return (0);
}