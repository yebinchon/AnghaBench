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
typedef  int u_int ;
struct tegra_pcib_softc {int /*<<< orphan*/  irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tegra_pcib_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t dev, int pin)
{
	struct tegra_pcib_softc *sc;
	u_int irq;

	sc = FUNC0(bus);
	irq = FUNC2(FUNC5(sc->irq_res));
	FUNC1(bus, "route pin %d for device %d.%d to %u\n",
		      pin, FUNC4(dev), FUNC3(dev),
		      irq);

	return (irq);
}