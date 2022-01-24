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
typedef  int uint32_t ;
struct bcm2835_clkman_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BCM_PWM_CLKSRC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bcm2835_clkman_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_clkman_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_clkman_softc*,int,int) ; 
 struct bcm2835_clkman_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

uint32_t
FUNC6(device_t dev, uint32_t unit, uint32_t hz)
{
	struct bcm2835_clkman_softc *sc;
	int i;
	uint32_t u;

	sc = FUNC4(dev);

	if (unit != BCM_PWM_CLKSRC) {
		FUNC5(sc->sc_dev,
		    "Unsupported unit 0x%x", unit);
		return (0);
	}

	FUNC2(sc, unit, 6);
	for (i = 0; i < 10; i++) {
		u = FUNC1(sc, unit);
		if (!(u&0x80))
			break;
		FUNC0(1000);
	}
	if (u & 0x80) {
		FUNC5(sc->sc_dev,
		    "Failed to stop clock for unit 0x%x", unit);
		return (0);
	}
	if (hz == 0)
		return (0);

	u = 500000000/hz;
	if (u < 4) {
		FUNC5(sc->sc_dev,
		    "Frequency too high for unit 0x%x (max: 125 MHz)",
		    unit);
		return (0);
	}
	if (u > 0xfff) {
		FUNC5(sc->sc_dev,
		    "Frequency too low for unit 0x%x (min: 123 kHz)",
		    unit);
		return (0);
	}
	hz = 500000000/u;
	FUNC3(sc, unit, u << 12);

	FUNC2(sc, unit, 0x16);
	for (i = 0; i < 10; i++) {
		u = FUNC1(sc, unit);
		if ((u&0x80))
			break;
		FUNC0(1000);
	}
	if (!(u & 0x80)) {
		FUNC5(sc->sc_dev,
		    "Failed to start clock for unit 0x%x", unit);
		return (0);
	}
	return (hz);
}