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
struct aw_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aw_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_gpio_softc*) ; 
 int FUNC2 (struct aw_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct aw_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int value)
{
	struct aw_gpio_softc *sc;
	int ret;

	sc = FUNC3(dev);

	FUNC0(sc);
	ret = FUNC2(sc, pin, value);
	FUNC1(sc);

	return (ret);
}