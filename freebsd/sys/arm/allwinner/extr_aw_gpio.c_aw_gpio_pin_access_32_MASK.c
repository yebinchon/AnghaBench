#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct aw_gpio_softc {TYPE_2__* padconf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {size_t npins; TYPE_1__* pins; } ;
struct TYPE_3__ {size_t port; size_t pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_gpio_softc*) ; 
 size_t FUNC2 (struct aw_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct aw_gpio_softc*,int /*<<< orphan*/ ,size_t) ; 
 int EINVAL ; 
 struct aw_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t first_pin, uint32_t clear_pins,
    uint32_t change_pins, uint32_t *orig_pins)
{
	struct aw_gpio_softc *sc;
	uint32_t bank, data, pin;

	sc = FUNC5(dev);
	if (first_pin > sc->padconf->npins)
		return (EINVAL);

	/*
	 * We require that first_pin refers to the first pin in a bank, because
	 * this API is not about convenience, it's for making a set of pins
	 * change simultaneously (required) with reasonably high performance
	 * (desired); we need to do a read-modify-write on a single register.
	 */
	bank = sc->padconf->pins[first_pin].port;
	pin = sc->padconf->pins[first_pin].pin;
	if (pin != 0)
		return (EINVAL);

	FUNC1(sc);
	data = FUNC2(sc, FUNC0(bank));
	if ((clear_pins | change_pins) != 0) 
		FUNC4(sc, FUNC0(bank),
		    (data & ~clear_pins) ^ change_pins);
	FUNC3(sc);

	if (orig_pins != NULL)
		*orig_pins = data;

	return (0);
}