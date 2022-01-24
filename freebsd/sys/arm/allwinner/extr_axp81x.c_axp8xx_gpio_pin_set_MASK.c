#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint32_t ;
struct axp8xx_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 int AXP_GPIO_FUNC ; 
#define  AXP_GPIO_FUNC_DRVHI 129 
#define  AXP_GPIO_FUNC_DRVLO 128 
 int AXP_GPIO_FUNC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct axp8xx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axp8xx_softc*) ; 
 int EINVAL ; 
 int EIO ; 
 TYPE_1__* axp8xx_pins ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct axp8xx_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, unsigned int val)
{
	struct axp8xx_softc *sc;
	uint8_t data, func;
	int error;

	if (pin >= FUNC5(axp8xx_pins))
		return (EINVAL);

	sc = FUNC4(dev);

	FUNC0(sc);
	error = FUNC2(dev, axp8xx_pins[pin].ctrl_reg, &data, 1);
	if (error == 0) {
		func = (data & AXP_GPIO_FUNC) >> AXP_GPIO_FUNC_SHIFT;
		switch (func) {
		case AXP_GPIO_FUNC_DRVLO:
		case AXP_GPIO_FUNC_DRVHI:
			data &= ~AXP_GPIO_FUNC;
			data |= (val << AXP_GPIO_FUNC_SHIFT);
			break;
		default:
			error = EIO;
			break;
		}
	}
	if (error == 0)
		error = FUNC3(dev, axp8xx_pins[pin].ctrl_reg, data);
	FUNC1(sc);

	return (error);
}