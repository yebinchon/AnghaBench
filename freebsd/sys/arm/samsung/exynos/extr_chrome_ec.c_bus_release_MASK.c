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
struct ec_softc {scalar_t__ ec_gpio; int /*<<< orphan*/  our_gpio; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct ec_softc *sc)
{
	device_t gpio_dev;

	if (sc->our_gpio == 0 || sc->ec_gpio == 0) {
		FUNC3(sc->dev, "i2c arbitrator is not configured\n");
		return (1);
	}

	gpio_dev = FUNC2(FUNC1("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC3(sc->dev, "cant find gpio_dev\n");
		return (1);
	}

	FUNC0(gpio_dev, sc->our_gpio, GPIO_PIN_HIGH);

	return (0);
}