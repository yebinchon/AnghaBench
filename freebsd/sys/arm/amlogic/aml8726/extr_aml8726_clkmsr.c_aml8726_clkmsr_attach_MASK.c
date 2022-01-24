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
struct aml8726_clkmsr_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_CLKMSR_CLK81 ; 
 int ENXIO ; 
 int FUNC0 (struct aml8726_clkmsr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_clkmsr_softc*,int) ; 
 int /*<<< orphan*/  aml8726_clkmsr_spec ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_clkmsr_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct aml8726_clkmsr_softc *sc = FUNC3(dev);
	int freq;

	sc->dev = dev;

	if (FUNC2(dev, aml8726_clkmsr_spec, sc->res)) {
		FUNC4(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	freq = FUNC0(sc, AML_CLKMSR_CLK81);
	FUNC4(sc->dev, "bus clock %u MHz\n", freq);

	FUNC1(sc, freq * 1000000);

	return (0);
}