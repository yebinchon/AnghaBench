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
typedef  scalar_t__ uint8_t ;
struct axp2xx_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int voltage_min; int voltage_nstep; int voltage_step; } ;

/* Variables and functions */
 int EINVAL ; 

__attribute__((used)) static int
FUNC0(struct axp2xx_reg_sc *sc, int min_uvolt,
    int max_uvolt, uint8_t *val)
{
	uint8_t nval;
	int nstep, uvolt;

	nval = 0;
	uvolt = sc->def->voltage_min * 1000;

	for (nstep = 0; nstep < sc->def->voltage_nstep && uvolt < min_uvolt;
	     nstep++) {
		++nval;
		uvolt += (sc->def->voltage_step * 1000);
	}
	if (uvolt > max_uvolt)
		return (EINVAL);

	*val = nval;
	return (0);
}