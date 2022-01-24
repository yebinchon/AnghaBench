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
struct exynos_ehci_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIN_USB ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct exynos_ehci_softc *esc, int dir, int power)
{
	device_t gpio_dev;

	/* Get the GPIO device, we need this to give power to USB */
	gpio_dev = FUNC3(FUNC2("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC4(esc->dev, "cant find gpio_dev\n");
		return (1);
	}

	if (power)
		FUNC0(gpio_dev, PIN_USB, GPIO_PIN_HIGH);
	else
		FUNC0(gpio_dev, PIN_USB, GPIO_PIN_LOW);

	if (dir)
		FUNC1(gpio_dev, PIN_USB, GPIO_PIN_OUTPUT);
	else
		FUNC1(gpio_dev, PIN_USB, GPIO_PIN_INPUT);

	return (0);
}