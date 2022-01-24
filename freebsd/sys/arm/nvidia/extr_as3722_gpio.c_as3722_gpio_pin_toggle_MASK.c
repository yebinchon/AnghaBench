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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct as3722_softc {int gpio_npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_GPIO_SIGNAL_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct as3722_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct as3722_softc*) ; 
 int FUNC2 (struct as3722_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct as3722_softc*,int /*<<< orphan*/ ,int,int) ; 
 struct as3722_softc* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, uint32_t pin)
{
	struct as3722_softc *sc;
	uint8_t tmp;
	int rv;

	sc = FUNC4(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	rv = FUNC2(sc, AS3722_GPIO_SIGNAL_OUT, &tmp);
	if (rv != 0) {
		FUNC1(sc);
		return (rv);
	}
	tmp ^= (1 <<pin);
	rv = FUNC3(sc, AS3722_GPIO_SIGNAL_OUT, (1 << pin), tmp);
	FUNC1(sc);
	return (0);
}