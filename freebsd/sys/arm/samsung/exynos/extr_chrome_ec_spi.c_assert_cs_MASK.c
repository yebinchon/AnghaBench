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
struct ec_softc {int /*<<< orphan*/ * dev_gpio; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_SPI_CS ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct ec_softc *sc, int enable)
{
	/* Get the GPIO device */
	sc->dev_gpio = FUNC3(FUNC2("gpio"), 0);
	if (sc->dev_gpio == NULL) {
		FUNC4(sc->dev, "Error: failed to get the GPIO dev\n");
		return (1);
	}

	FUNC1(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_OUTPUT);

	if (enable) {
		FUNC0(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_LOW);
	} else {
		FUNC0(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_HIGH);
	}

	return (0);
}