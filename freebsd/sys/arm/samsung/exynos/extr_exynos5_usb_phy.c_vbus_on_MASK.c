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
struct usb_phy_softc {int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct usb_phy_softc *sc)
{
	pcell_t dts_value[3];
	device_t gpio_dev;
	phandle_t node;
	pcell_t pin;
	int len;

	if ((node = FUNC7(sc->dev)) == -1)
		return (-1);

	/* Power pin */
	if ((len = FUNC3(node, "vbus-supply")) <= 0)
		return (-1);
	FUNC2(node, "vbus-supply", dts_value, len);
	pin = dts_value[0];

	gpio_dev = FUNC5(FUNC4("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC6(sc->dev, "can't find gpio_dev\n");
		return (1);
	}

	FUNC1(gpio_dev, pin, GPIO_PIN_OUTPUT);
	FUNC0(gpio_dev, pin, GPIO_PIN_HIGH);

	return (0);
}