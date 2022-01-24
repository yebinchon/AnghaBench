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
struct mv_gpio_softc {size_t pin_num; TYPE_1__* gpio_setup; } ;
struct mv_gpio_pindev {size_t pin; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ; 
 int MV_GPIO_IN_IRQ_EDGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void
FUNC5(struct mv_gpio_pindev *s)
{
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC2(s->dev);

	if (s->pin >= sc->pin_num)
		return;

	FUNC0();

	if (sc->gpio_setup[s->pin].gp_flags & (MV_GPIO_IN_IRQ_EDGE |
	    MV_GPIO_IN_IRQ_DOUBLE_EDGE))
		FUNC3(s->dev, s->pin, 1);
	else
		FUNC4(s->dev, s->pin, 1);

	FUNC1();

	return;
}