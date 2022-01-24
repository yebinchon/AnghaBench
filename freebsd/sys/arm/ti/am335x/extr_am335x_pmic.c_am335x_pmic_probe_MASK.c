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
struct am335x_pmic_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct am335x_pmic_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct am335x_pmic_softc *sc;

	if (!FUNC3(dev, "ti,tps65217"))
		return (ENXIO);

	sc = FUNC0(dev);
	sc->sc_dev = dev;
	/* Convert to 8-bit addressing */
	sc->sc_addr = FUNC2(dev);

	FUNC1(dev, "TI TPS65217 Power Management IC");

	return (0);
}