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
struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {int /*<<< orphan*/  tgi_irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ti_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct intr_irqsrc *isrc)
{
	struct ti_gpio_softc *sc = FUNC1(dev);
	struct ti_gpio_irqsrc *tgi = (struct ti_gpio_irqsrc *)isrc;

	FUNC0(tgi->tgi_irq);
	FUNC2(sc, tgi);
}