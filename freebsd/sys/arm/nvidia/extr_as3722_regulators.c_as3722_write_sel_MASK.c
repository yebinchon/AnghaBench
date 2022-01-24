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
struct as3722_reg_sc {TYPE_1__* def; int /*<<< orphan*/  base_sc; } ;
struct TYPE_2__ {int volt_vsel_mask; int /*<<< orphan*/  volt_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct as3722_reg_sc *sc, uint8_t sel)
{
	int rv;

	sel <<= FUNC1(sc->def->volt_vsel_mask) - 1;
	sel &= sc->def->volt_vsel_mask;

	rv = FUNC0(sc->base_sc, sc->def->volt_reg,
	    sc->def->volt_vsel_mask, sel);
	if (rv != 0)
		return (rv);
	return (rv);
}