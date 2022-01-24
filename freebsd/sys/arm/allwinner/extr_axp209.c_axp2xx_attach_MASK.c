#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ich_arg; int /*<<< orphan*/  ich_func; } ;
struct axp2xx_softc {int type; int nregs; struct axp2xx_reg_sc** regs; TYPE_2__ intr_hook; void* nsensors; void* sensors; void* gpiodev; void* npins; void* pins; int /*<<< orphan*/  res; int /*<<< orphan*/  mtx; } ;
struct axp2xx_regdef {char* name; } ;
struct axp2xx_reg_sc {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int ocd_data; } ;

/* Variables and functions */
#define  AXP209 129 
#define  AXP221 128 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_AXP2XX_REG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* axp209_pins ; 
 void* axp209_regdefs ; 
 void* axp209_sensors ; 
 void* axp221_pins ; 
 void* axp221_regdefs ; 
 void* axp221_sensors ; 
 struct axp2xx_reg_sc* FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct axp2xx_regdef*) ; 
 int /*<<< orphan*/  axp2xx_start ; 
 int /*<<< orphan*/  axp_res_spec ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct axp2xx_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct axp2xx_reg_sc** FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct axp2xx_softc *sc;
	struct axp2xx_reg_sc *reg;
	struct axp2xx_regdef *regdefs;
	phandle_t rnode, child;
	int i;

	sc = FUNC4(dev);
	FUNC8(&sc->mtx, FUNC3(dev), NULL, MTX_DEF);

	if (FUNC1(dev, axp_res_spec, sc->res) != 0) {
		FUNC5(dev, "can't allocate device resources\n");
		return (ENXIO);
	}

	sc->type = FUNC12(dev, compat_data)->ocd_data;
	switch (sc->type) {
	case AXP209:
		sc->pins = axp209_pins;
		sc->npins = FUNC9(axp209_pins);
		sc->gpiodev = FUNC6(dev);

		sc->sensors = axp209_sensors;
		sc->nsensors = FUNC9(axp209_sensors);

		regdefs = axp209_regdefs;
		sc->nregs = FUNC9(axp209_regdefs);
		break;
	case AXP221:
		sc->pins = axp221_pins;
		sc->npins = FUNC9(axp221_pins);
		sc->gpiodev = FUNC6(dev);

		sc->sensors = axp221_sensors;
		sc->nsensors = FUNC9(axp221_sensors);

		regdefs = axp221_regdefs;
		sc->nregs = FUNC9(axp221_regdefs);
		break;
	}

	sc->regs = FUNC7(sizeof(struct axp2xx_reg_sc *) * sc->nregs,
	    M_AXP2XX_REG, M_WAITOK | M_ZERO);

	sc->intr_hook.ich_func = axp2xx_start;
	sc->intr_hook.ich_arg = dev;

	if (FUNC2(&sc->intr_hook) != 0)
		return (ENOMEM);

	/* Attach known regulators that exist in the DT */
	rnode = FUNC10(FUNC11(dev), "regulators");
	if (rnode > 0) {
		for (i = 0; i < sc->nregs; i++) {
			child = FUNC10(rnode,
			    regdefs[i].name);
			if (child == 0)
				continue;
			reg = FUNC0(dev, child, &regdefs[i]);
			if (reg == NULL) {
				FUNC5(dev,
				    "cannot attach regulator %s\n",
				    regdefs[i].name);
				continue;
			}
			sc->regs[i] = reg;
			if (bootverbose)
				FUNC5(dev, "Regulator %s attached\n",
				    regdefs[i].name);
		}
	}

	return (0);
}