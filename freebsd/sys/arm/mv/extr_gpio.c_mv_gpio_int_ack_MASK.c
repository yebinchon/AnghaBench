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
struct mv_gpio_softc {scalar_t__ pin_num; } ;
struct mv_gpio_pindev {scalar_t__ pin; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ GPIO_INT_CAUSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct mv_gpio_pindev *s)
{
	uint32_t reg, pin;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC0(s->dev);
	pin = s->pin;

	if (pin >= sc->pin_num)
		return;

	reg = GPIO_INT_CAUSE;

	FUNC1(s->dev, reg, pin);
}