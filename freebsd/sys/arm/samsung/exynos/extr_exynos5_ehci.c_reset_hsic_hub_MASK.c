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
typedef  int /*<<< orphan*/  pin ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(struct exynos_ehci_softc *esc, phandle_t hub)
{
	device_t gpio_dev;
	pcell_t pin;

	/* TODO: check that hub is compatible with "smsc,usb3503" */
	if (!FUNC3(hub, "freebsd,reset-gpio")) {
		return (1);
	}

	if (FUNC2(hub, "freebsd,reset-gpio", &pin, sizeof(pin)) < 0) {
		FUNC6(esc->dev,
		    "failed to decode reset GPIO pin number for HSIC hub\n");
		return (1);
	}

	/* Get the GPIO device, we need this to give power to USB */
	gpio_dev = FUNC5(FUNC4("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC6(esc->dev, "Cant find gpio device\n");
		return (1);
	}

	FUNC1(gpio_dev, pin, GPIO_PIN_LOW);
	FUNC0(100);
	FUNC1(gpio_dev, pin, GPIO_PIN_HIGH);

	return (0);
}