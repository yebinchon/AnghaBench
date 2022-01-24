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
struct tegra_gpio_softc {int /*<<< orphan*/  mem_res; } ;
struct gpio_pin {int /*<<< orphan*/  gp_pin; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline uint32_t
FUNC3(struct tegra_gpio_softc *sc, bus_size_t reg, struct gpio_pin *pin)
{
	int bit;
	uint32_t val;

	bit = FUNC0(pin->gp_pin);
	val = FUNC2(sc->mem_res, reg + FUNC1(pin->gp_pin));
	return (val >> bit) & 1;
}