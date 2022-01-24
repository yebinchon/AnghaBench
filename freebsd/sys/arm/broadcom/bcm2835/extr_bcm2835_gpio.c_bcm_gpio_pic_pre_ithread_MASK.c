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
struct intr_irqsrc {int dummy; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ; 
 scalar_t__ FUNC1 (struct bcm_gpio_irqsrc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ; 
 struct bcm_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct intr_irqsrc *isrc)
{
	struct bcm_gpio_softc *sc = FUNC3(dev);
	struct bcm_gpio_irqsrc *bgi = (struct bcm_gpio_irqsrc *)isrc;

	FUNC2(sc, bgi);
	if (FUNC1(bgi))
		FUNC0(sc, bgi);
}