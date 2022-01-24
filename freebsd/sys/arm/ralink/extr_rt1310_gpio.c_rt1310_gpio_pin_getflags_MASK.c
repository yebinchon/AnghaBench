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
struct rt1310_gpio_softc {int dummy; } ;
struct rt1310_gpio_pinmap {scalar_t__ lp_flags; int lp_port; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ GPIO_PIN_INPUT ; 
 scalar_t__ GPIO_PIN_OUTPUT ; 
 scalar_t__ RT_GPIO_NPINS ; 
 int /*<<< orphan*/  RT_GPIO_OFF_PADIR ; 
 int /*<<< orphan*/  RT_GPIO_OFF_PBDIR ; 
 int FUNC0 (struct rt1310_gpio_pinmap const*,scalar_t__) ; 
#define  RT_GPIO_PORTA 129 
#define  RT_GPIO_PORTB 128 
 struct rt1310_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct rt1310_gpio_pinmap* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct rt1310_gpio_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct rt1310_gpio_softc *sc = FUNC1(dev);
	const struct rt1310_gpio_pinmap *map;
	uint32_t state;
	int dir;

	if (pin > RT_GPIO_NPINS)
		return (ENODEV);

	map = FUNC3(pin);

	/* Check whether it's bidirectional pin */
	if ((map->lp_flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) != 
	    (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) {
		*flags = map->lp_flags;
		return (0);
	}

	switch (map->lp_port) {
	case RT_GPIO_PORTA:
		state = FUNC4(sc, RT_GPIO_OFF_PADIR);
		dir = (state & (1 << FUNC0(map, pin)));
		break;
	case RT_GPIO_PORTB:
		state = FUNC4(sc, RT_GPIO_OFF_PBDIR);
		dir = (state & (1 << FUNC0(map, pin)));
		break;
	default:
		FUNC2("unknown GPIO port");
	}

	*flags = dir ? GPIO_PIN_OUTPUT : GPIO_PIN_INPUT;

	return (0);
}