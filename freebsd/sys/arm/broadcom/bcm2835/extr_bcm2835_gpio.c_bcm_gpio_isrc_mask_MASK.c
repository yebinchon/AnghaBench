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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int bgi_mode; int /*<<< orphan*/  bgi_mask; int /*<<< orphan*/  bgi_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_gpio_softc*) ; 
#define  GPIO_INTR_EDGE_BOTH 132 
#define  GPIO_INTR_EDGE_FALLING 131 
#define  GPIO_INTR_EDGE_RISING 130 
#define  GPIO_INTR_LEVEL_HIGH 129 
#define  GPIO_INTR_LEVEL_LOW 128 

__attribute__((used)) static inline void
FUNC8(struct bcm_gpio_softc *sc, struct bcm_gpio_irqsrc *bgi)
{
	uint32_t bank;

	bank = FUNC0(bgi->bgi_irq);
	FUNC6(sc);
	switch (bgi->bgi_mode) {
	case GPIO_INTR_LEVEL_LOW:
		FUNC1(sc, FUNC4(bank), bgi->bgi_mask);
		break;
	case GPIO_INTR_LEVEL_HIGH:
		FUNC1(sc, FUNC3(bank), bgi->bgi_mask);
		break;
	case GPIO_INTR_EDGE_RISING:
		FUNC1(sc, FUNC5(bank), bgi->bgi_mask);
		break;
	case GPIO_INTR_EDGE_FALLING:
		FUNC1(sc, FUNC2(bank), bgi->bgi_mask);
		break;
	case GPIO_INTR_EDGE_BOTH:
		FUNC1(sc, FUNC5(bank), bgi->bgi_mask);
		FUNC1(sc, FUNC2(bank), bgi->bgi_mask);
		break;
	}
	FUNC7(sc);
}