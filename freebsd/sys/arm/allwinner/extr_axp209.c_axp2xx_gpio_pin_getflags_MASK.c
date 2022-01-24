#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint32_t ;
struct axp2xx_softc {size_t npins; TYPE_1__* pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 int AXP2XX_GPIO_FUNC_DRVHI ; 
 int AXP2XX_GPIO_FUNC_DRVLO ; 
 int AXP2XX_GPIO_FUNC_INPUT ; 
 int AXP2XX_GPIO_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct axp2xx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axp2xx_softc*) ; 
 int EINVAL ; 
 size_t GPIO_PIN_INPUT ; 
 size_t GPIO_PIN_OUTPUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct axp2xx_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct axp2xx_softc *sc;
	uint8_t data, func;
	int error;

	sc = FUNC3(dev);

	if (pin >= sc->npins)
		return (EINVAL);

	FUNC0(sc);
	error = FUNC2(dev, sc->pins[pin].ctrl_reg, &data, 1);
	if (error == 0) {
		func = data & AXP2XX_GPIO_FUNC_MASK;
		if (func == AXP2XX_GPIO_FUNC_INPUT)
			*flags = GPIO_PIN_INPUT;
		else if (func == AXP2XX_GPIO_FUNC_DRVLO ||
		    func == AXP2XX_GPIO_FUNC_DRVHI)
			*flags = GPIO_PIN_OUTPUT;
		else
			*flags = 0;
	}
	FUNC1(sc);

	return (error);
}