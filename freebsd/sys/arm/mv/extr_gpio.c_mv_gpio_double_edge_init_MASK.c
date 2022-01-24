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
typedef  int uint8_t ;
struct mv_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev, int pin)
{
	uint8_t raw_read;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	raw_read = (FUNC3(dev, pin, 1) ? 1 : 0);

	if (raw_read)
		FUNC2(dev, pin, 1, 0);
	else
		FUNC2(dev, pin, 0, 0);
}