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
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_TRISTATE ; 
 int FUNC0 (struct zy7_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct zy7_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct zy7_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, uint32_t pin, uint32_t flags)
{
	struct zy7_gpio_softc *sc = FUNC7(dev);

	if (!FUNC1(pin))
		return (EINVAL);

	FUNC3(sc);

	if ((flags & GPIO_PIN_OUTPUT) != 0) {
		/* Output.  Set or reset OEN too. */
		FUNC2(sc, FUNC5(pin >> 5),
		    FUNC0(sc, FUNC5(pin >> 5)) | (1 << (pin & 31)));

		if ((flags & GPIO_PIN_TRISTATE) != 0)
			FUNC2(sc, FUNC6(pin >> 5),
			    FUNC0(sc, FUNC6(pin >> 5)) &
			    ~(1 << (pin & 31)));
		else
			FUNC2(sc, FUNC6(pin >> 5),
			    FUNC0(sc, FUNC6(pin >> 5)) |
			    (1 << (pin & 31)));
	} else {
		/* Input.  Turn off OEN. */
		FUNC2(sc, FUNC5(pin >> 5),
		    FUNC0(sc, FUNC5(pin >> 5)) & ~(1 << (pin & 31)));
		FUNC2(sc, FUNC6(pin >> 5),
		    FUNC0(sc, FUNC6(pin >> 5)) & ~(1 << (pin & 31)));
	}
		
	FUNC4(sc);

	return (0);
}