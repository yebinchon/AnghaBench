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
struct ti_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TI_GPIO_IRQSTATUS_0 ; 
 int /*<<< orphan*/  TI_GPIO_IRQSTATUS_1 ; 
 int /*<<< orphan*/  FUNC0 (struct ti_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct ti_gpio_softc *sc, uint32_t mask)
{

	/*
	 * Acknowledge the interrupt on both registers even if we use only
	 * the first one.
	 */
	FUNC0(sc, TI_GPIO_IRQSTATUS_0, mask);
	FUNC0(sc, TI_GPIO_IRQSTATUS_1, mask);
}