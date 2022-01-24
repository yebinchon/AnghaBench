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
struct tegra124_car_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (intptr_t) ; 

int
FUNC5(struct tegra124_car_softc *sc, intptr_t idx, bool reset)
{
	uint32_t reg, mask, reset_reg;

	mask = 1 << (idx % 32);
	reset_reg = FUNC4(idx);

	FUNC0(sc->dev);
	FUNC2(sc->dev, reset_reg, mask, reset ? mask : 0);
	FUNC3(sc->dev, reset_reg, &reg);
	FUNC1(sc->dev);

	return(0);
}