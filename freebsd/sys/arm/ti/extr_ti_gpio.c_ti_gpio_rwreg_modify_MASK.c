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
struct ti_gpio_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ti_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_gpio_softc*,int,int) ; 

__attribute__((used)) static inline void
FUNC2(struct ti_gpio_softc *sc, uint32_t reg, uint32_t mask,
    bool set_bits)
{
	uint32_t value;

	value = FUNC0(sc, reg);
	FUNC1(sc, reg, set_bits ? value | mask : value & ~mask);
}