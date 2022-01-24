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
struct rt1310_gpio_pinmap {int lp_flags; int lp_port; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTSUP ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int RT_GPIO_NPINS ; 
 int RT_GPIO_OFF_PADIR ; 
 int RT_GPIO_OFF_PBDIR ; 
 int FUNC0 (struct rt1310_gpio_pinmap const*,int) ; 
#define  RT_GPIO_PORTA 129 
#define  RT_GPIO_PORTB 128 
 struct rt1310_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rt1310_gpio_pinmap* FUNC2 (int) ; 
 int FUNC3 (struct rt1310_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt1310_gpio_softc*,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct rt1310_gpio_softc *sc = FUNC1(dev);
	const struct rt1310_gpio_pinmap *map;
	uint32_t dir, state;
	uint32_t port;

	if (pin > RT_GPIO_NPINS)
		return (ENODEV);

	map = FUNC2(pin);

	/* Check whether it's bidirectional pin */
	if ((map->lp_flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) != 
	    (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
		return (ENOTSUP);
	
	if (flags & GPIO_PIN_INPUT)
		dir = 0;

	if (flags & GPIO_PIN_OUTPUT)
		dir = 1;

	switch (map->lp_port) {
	case RT_GPIO_PORTA:
		port = RT_GPIO_OFF_PADIR;
		break;
	case RT_GPIO_PORTB:
		port = RT_GPIO_OFF_PBDIR;
		break;
	}

	state = FUNC3(sc, port);
	if (flags & GPIO_PIN_INPUT) {
		state &= ~(1 << FUNC0(map, pin));
	} else {
		state |= (1 << FUNC0(map, pin));
	}
	FUNC4(sc, port, state);

	return (0);
}