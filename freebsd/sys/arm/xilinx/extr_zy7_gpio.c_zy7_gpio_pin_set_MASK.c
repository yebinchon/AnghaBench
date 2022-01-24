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
typedef  int uint32_t ;
struct zy7_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct zy7_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, unsigned int value)
{
	struct zy7_gpio_softc *sc = FUNC4(dev);

	if (!FUNC0(pin) || value > 1)
		return (EINVAL);

	/* Fancy register tricks allow atomic set or reset. */
	if ((pin & 16) != 0)
		FUNC1(sc, FUNC3(pin >> 5),
		    (0xffff0000 ^ (0x10000 << (pin & 15))) |
		    (value << (pin & 15)));
	else
		FUNC1(sc, FUNC2(pin >> 5),
		    (0xffff0000 ^ (0x10000 << (pin & 15))) |
		    (value << (pin & 15)));

	return (0);
}