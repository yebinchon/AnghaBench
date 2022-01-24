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
typedef  int uint16_t ;
struct am335x_ecap_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECAP_CAP3 ; 
 int /*<<< orphan*/  ECAP_CAP4 ; 
 int /*<<< orphan*/  ECAP_ECCTL2 ; 
 int FUNC0 (struct am335x_ecap_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECAP_TSCTR ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_ecap_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct am335x_ecap_softc*,int /*<<< orphan*/ ,int) ; 
 int ECCTL2_MODE_APWM ; 
 int ECCTL2_SYNCO_SEL ; 
 int ECCTL2_TSCTRSTOP_FREERUN ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (struct am335x_ecap_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct am335x_ecap_softc*) ; 
 int /*<<< orphan*/  am335x_ecap_devclass ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct am335x_ecap_softc* FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(int unit, int period, int duty)
{
	device_t dev;
	struct am335x_ecap_softc *sc;
	uint16_t reg;

	dev = FUNC5(am335x_ecap_devclass, unit);
	if (dev == NULL)
		return (ENXIO);

	if (duty > period)
		return (EINVAL);

	if (period == 0)
		return (EINVAL);

	sc = FUNC6(dev);
	FUNC3(sc);

	reg = FUNC0(sc, ECAP_ECCTL2);
	reg |= ECCTL2_MODE_APWM | ECCTL2_TSCTRSTOP_FREERUN | ECCTL2_SYNCO_SEL;
	FUNC1(sc, ECAP_ECCTL2, reg);

	/* CAP3 in APWM mode is APRD shadow register */
	FUNC2(sc, ECAP_CAP3, period - 1);

	/* CAP4 in APWM mode is ACMP shadow register */
	FUNC2(sc, ECAP_CAP4, duty);
	/* Restart counter */
	FUNC2(sc, ECAP_TSCTR, 0);

	FUNC4(sc);

	return (0);
}