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
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {scalar_t__ bgi_mode; int /*<<< orphan*/  bgi_mask; int /*<<< orphan*/  bgi_irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_gpio_softc*) ; 
 scalar_t__ GPIO_INTR_EDGE_BOTH ; 
 scalar_t__ GPIO_INTR_EDGE_FALLING ; 
 scalar_t__ GPIO_INTR_EDGE_RISING ; 
 scalar_t__ GPIO_INTR_LEVEL_HIGH ; 
 scalar_t__ GPIO_INTR_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bcm_gpio_softc *sc, struct bcm_gpio_irqsrc *bgi,
    uint32_t mode)
{
	uint32_t bank;

	bank = FUNC0(bgi->bgi_irq);
	FUNC5(sc);
	FUNC7(sc, FUNC4(bank), bgi->bgi_mask,
	    mode == GPIO_INTR_EDGE_RISING || mode == GPIO_INTR_EDGE_BOTH);
	FUNC7(sc, FUNC1(bank), bgi->bgi_mask,
	    mode == GPIO_INTR_EDGE_FALLING || mode == GPIO_INTR_EDGE_BOTH);
	FUNC7(sc, FUNC2(bank), bgi->bgi_mask,
	    mode == GPIO_INTR_LEVEL_HIGH);
	FUNC7(sc, FUNC3(bank), bgi->bgi_mask,
	    mode == GPIO_INTR_LEVEL_LOW);
	bgi->bgi_mode = mode;
	FUNC6(sc);
}