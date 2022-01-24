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
typedef  int /*<<< orphan*/  u_char ;
struct tegra_i2c_softc {int /*<<< orphan*/  iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_softc*) ; 
 struct tegra_i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_i2c_softc*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct tegra_i2c_softc *sc;
	int busfreq;

	sc = FUNC3(dev);
	busfreq = FUNC0(sc->iicbus, speed);
	sc = FUNC3(dev);
	FUNC1(sc);
	FUNC4(sc, busfreq);
	FUNC2(sc);
	return (0);
}