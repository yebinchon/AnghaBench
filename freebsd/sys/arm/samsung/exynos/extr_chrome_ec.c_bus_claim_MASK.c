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
struct ec_softc {int /*<<< orphan*/  ec_gpio; int /*<<< orphan*/  our_gpio; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct ec_softc *sc)
{
	device_t gpio_dev;
	int status;

	if (sc->our_gpio == 0 || sc->ec_gpio == 0) {
		FUNC4(sc->dev, "i2c arbitrator is not configured\n");
		return (1);
	}

	gpio_dev = FUNC3(FUNC2("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC4(sc->dev, "cant find gpio_dev\n");
		return (1);
	}

	/* Say we want the bus */
	FUNC1(gpio_dev, sc->our_gpio, GPIO_PIN_LOW);

	/* TODO: insert a delay to allow EC to react. */

	/* Check EC decision */
	FUNC0(gpio_dev, sc->ec_gpio, &status);

	if (status == 1) {
		/* Okay. We have bus */
		return (0);
	}

	/* EC is master */
	return (-1);
}