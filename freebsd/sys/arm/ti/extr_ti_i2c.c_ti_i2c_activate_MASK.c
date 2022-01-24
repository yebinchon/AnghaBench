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
struct ti_i2c_softc {int /*<<< orphan*/  clk_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ti_i2c_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int err;
	struct ti_i2c_softc *sc;

	sc = (struct ti_i2c_softc*)FUNC0(dev);

	/*
	 * 1. Enable the functional and interface clocks (see Section
	 * 23.1.5.1.1.1.1).
	 */
	err = FUNC2(sc->clk_id);
	if (err)
		return (err);

	return (FUNC1(sc, IIC_UNKNOWN));
}