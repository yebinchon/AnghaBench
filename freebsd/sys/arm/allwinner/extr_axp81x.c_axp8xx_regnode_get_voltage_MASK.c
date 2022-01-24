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
typedef  int uint8_t ;
struct regnode {int dummy; } ;
struct axp8xx_reg_sc {TYPE_1__* def; int /*<<< orphan*/  base_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  voltage_reg; int /*<<< orphan*/  voltage_step2; int /*<<< orphan*/  voltage_step1; } ;

/* Variables and functions */
 int AXP_VOLTCTL_MASK ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct axp8xx_reg_sc*,int,int*) ; 
 struct axp8xx_reg_sc* FUNC2 (struct regnode*) ; 

__attribute__((used)) static int
FUNC3(struct regnode *regnode, int *uvolt)
{
	struct axp8xx_reg_sc *sc;
	uint8_t val;

	sc = FUNC2(regnode);

	if (!sc->def->voltage_step1 || !sc->def->voltage_step2)
		return (ENXIO);

	FUNC0(sc->base_dev, sc->def->voltage_reg, &val, 1);
	FUNC1(sc, val & AXP_VOLTCTL_MASK, uvolt);

	return (0);
}