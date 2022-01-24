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
struct bcm_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_gpio_softc*) ; 
 int FUNC2 (struct bcm_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bcm_gpio_softc *sc, uint32_t pin, uint32_t f)
{
	uint32_t bank, data, offset;

	/* Must be called with lock held. */
	FUNC1(sc);

	/* Five banks, 10 pins per bank, 3 bits per pin. */
	bank = pin / 10;
	offset = (pin - bank * 10) * 3;

	data = FUNC2(sc, FUNC0(bank));
	data &= ~(7 << offset);
	data |= (f << offset);
	FUNC3(sc, FUNC0(bank), data);
}