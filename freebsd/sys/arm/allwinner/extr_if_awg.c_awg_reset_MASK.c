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
struct awg_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BASIC_CTL_SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EMAC_BASIC_CTL_1 ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int FUNC1 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int SOFT_RST_RETRY ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct awg_softc *sc;
	int retry;

	sc = FUNC5(dev);

	/* Reset PHY if necessary */
	if (FUNC4(dev) != 0) {
		FUNC6(dev, "failed to reset PHY\n");
		return (ENXIO);
	}

	/* Soft reset all registers and logic */
	FUNC2(sc, EMAC_BASIC_CTL_1, BASIC_CTL_SOFT_RST);

	/* Wait for soft reset bit to self-clear */
	for (retry = SOFT_RST_RETRY; retry > 0; retry--) {
		if ((FUNC1(sc, EMAC_BASIC_CTL_1) & BASIC_CTL_SOFT_RST) == 0)
			break;
		FUNC0(10);
	}
	if (retry == 0) {
		FUNC6(dev, "soft reset timed out\n");
#ifdef AWG_DEBUG
		awg_dump_regs(dev);
#endif
		return (ETIMEDOUT);
	}

	return (0);
}