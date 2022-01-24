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
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {size_t port; size_t pin; } ;

/* Variables and functions */
 size_t AW_GPIO_DRV_MASK ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_gpio_softc*) ; 
 size_t FUNC2 (struct aw_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_gpio_softc*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (struct aw_gpio_softc*,size_t) ; 

__attribute__((used)) static void
FUNC5(struct aw_gpio_softc *sc, uint32_t pin, uint32_t drive)
{
	uint32_t bank, offset, val;

	if (FUNC4(sc, pin) == drive)
		return;

	/* Must be called with lock held. */
	FUNC1(sc);

	bank = sc->padconf->pins[pin].port;
	pin = sc->padconf->pins[pin].pin;
	offset = ((pin & 0x0f) << 1);

	val = FUNC2(sc, FUNC0(bank, pin >> 4));
	val &= ~(AW_GPIO_DRV_MASK << offset);
	val |= (drive << offset);
	FUNC3(sc, FUNC0(bank, pin >> 4), val);
}