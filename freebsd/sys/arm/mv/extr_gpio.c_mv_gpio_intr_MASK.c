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
struct mv_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  GPIO_DATA_IN ; 
 int /*<<< orphan*/  GPIO_INT_CAUSE ; 
 int /*<<< orphan*/  GPIO_INT_EDGE_MASK ; 
 int /*<<< orphan*/  GPIO_INT_LEV_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, void *arg)
{
	uint32_t int_cause, gpio_val;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC2(dev);

	FUNC0();

	/*
	 * According to documentation, edge sensitive interrupts are asserted
	 * when unmasked GPIO_INT_CAUSE register bits are set.
	 */
	int_cause = FUNC4(dev, GPIO_INT_CAUSE);
	int_cause &= FUNC4(dev, GPIO_INT_EDGE_MASK);

	/*
	 * Level sensitive interrupts are asserted when unmasked GPIO_DATA_IN
	 * register bits are set.
	 */
	gpio_val = FUNC4(dev, GPIO_DATA_IN);
	gpio_val &= FUNC4(dev, GPIO_INT_LEV_MASK);

	FUNC3(dev, int_cause | gpio_val, 0);

	FUNC1();

	return (FILTER_HANDLED);
}