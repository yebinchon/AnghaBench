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
struct rt1310_gpio_softc {int dummy; } ;
struct rt1310_gpio_pinmap {int lp_port; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int GPIO_PIN_OUTPUT ; 
 int RT_GPIO_OFF_PADR ; 
 int RT_GPIO_OFF_PBDR ; 
 int FUNC0 (struct rt1310_gpio_pinmap const*,int) ; 
#define  RT_GPIO_PORTA 129 
#define  RT_GPIO_PORTB 128 
 struct rt1310_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rt1310_gpio_pinmap* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (struct rt1310_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt1310_gpio_softc*,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, uint32_t value)
{
	struct rt1310_gpio_softc *sc = FUNC1(dev);
	const struct rt1310_gpio_pinmap *map;
	uint32_t state, flags;
	uint32_t port;

	map = FUNC2(pin);

	if (FUNC3(dev, pin, &flags))
		return (ENXIO);

	if ((flags & GPIO_PIN_OUTPUT) == 0)
		return (EINVAL);

	switch (map->lp_port) {
	case RT_GPIO_PORTA:
		port = RT_GPIO_OFF_PADR;
		break;
	case RT_GPIO_PORTB:
		port = RT_GPIO_OFF_PBDR;
		break;
	}

	state = FUNC4(sc, port);
	if (value == 1) {
		state |= (1 << FUNC0(map, pin));
	} else {
		state &= ~(1 << FUNC0(map, pin));
	}
	FUNC5(sc, port, state);

	return (0);
}