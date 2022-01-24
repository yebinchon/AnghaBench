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
struct TYPE_2__ {int status_mask; unsigned int status_shift; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
#define  AXP2XX_GPIO_FUNC_DRVHI 130 
#define  AXP2XX_GPIO_FUNC_DRVLO 129 
#define  AXP2XX_GPIO_FUNC_INPUT 128 
 int AXP2XX_GPIO_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct axp2xx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axp2xx_softc*) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct axp2xx_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *val)
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
		switch (func) {
		case AXP2XX_GPIO_FUNC_DRVLO:
			*val = 0;
			break;
		case AXP2XX_GPIO_FUNC_DRVHI:
			*val = 1;
			break;
		case AXP2XX_GPIO_FUNC_INPUT:
			error = FUNC2(dev, sc->pins[pin].status_reg,
			    &data, 1);
			if (error == 0) {
				*val = (data & sc->pins[pin].status_mask);
				*val >>= sc->pins[pin].status_shift;
			}
			break;
		default:
			error = EIO;
			break;
		}
	}
	FUNC1(sc);

	return (error);
}