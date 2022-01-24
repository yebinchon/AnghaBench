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
struct tegra_i2c_softc {scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_i2c_softc*) ; 

__attribute__((used)) static int
FUNC4(struct tegra_i2c_softc *sc)
{
	int timeout;

	for(timeout = 10000; timeout > 0; timeout--)  {
		FUNC2(sc);
		FUNC3(sc);
		FUNC1(sc);
		if (sc->done != 0)
			 break;
		FUNC0(1);
	}
	if (timeout <= 0)
		return (ETIMEDOUT);
	return (0);
}