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
typedef  scalar_t__ uint32_t ;
struct imx51_gpio_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMX_GPIO_DR_REG ; 
 scalar_t__ FUNC0 (struct imx51_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx51_gpio_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct imx51_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t first_pin, uint32_t clear_pins,
    uint32_t change_pins, uint32_t *orig_pins)
{
	struct imx51_gpio_softc *sc;

	if (first_pin != 0)
		return (EINVAL);

	sc = FUNC2(dev);

	if (orig_pins != NULL)
		*orig_pins = FUNC0(sc, IMX_GPIO_DR_REG);

	if ((clear_pins | change_pins) != 0) {
		FUNC3(&sc->sc_mtx);
		FUNC1(sc, IMX_GPIO_DR_REG,
		    (FUNC0(sc, IMX_GPIO_DR_REG) & ~clear_pins) ^ change_pins);
		FUNC4(&sc->sc_mtx);
	}

	return (0);
}