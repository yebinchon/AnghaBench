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
struct am335x_pwmss_softc {int sc_clk; int /*<<< orphan*/  sc_dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int INVALID_CLK_IDENT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  PWMSS0_CLK 130 
#define  PWMSS1_CLK 129 
#define  PWMSS2_CLK 128 
 int /*<<< orphan*/  SCM_PWMSS_CTRL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct am335x_pwmss_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct am335x_pwmss_softc *sc;
	uint32_t reg, id;
	phandle_t node;

	sc = FUNC4(dev);
	sc->sc_dev = dev;

	sc->sc_clk = FUNC9(dev);
	if (sc->sc_clk == INVALID_CLK_IDENT) {
		FUNC5(dev, "failed to get device id based on ti,hwmods\n");
		return (EINVAL);
	}

	FUNC10(sc->sc_clk);
	FUNC11(SCM_PWMSS_CTRL, &reg);
	switch (sc->sc_clk) {
		case PWMSS0_CLK:
			id = 0;
			break;
		case PWMSS1_CLK:
			id = 1;
			break;

		case PWMSS2_CLK:
			id = 2;
			break;
		default:
			FUNC5(dev, "unknown pwmss clock id: %d\n", sc->sc_clk);
			return (EINVAL);
	}
	reg |= (1 << id);
	FUNC12(SCM_PWMSS_CTRL, reg);

	node = FUNC6(dev);

	if (node == -1)
		return (ENXIO);

	FUNC8(dev, node);

	/*
	 * Allow devices to identify.
	 */
	FUNC3(dev);

	/*
	 * Now walk the OFW tree and attach top-level devices.
	 */
	for (node = FUNC0(node); node > 0; node = FUNC1(node))
		FUNC7(dev, node, 0, NULL, -1, NULL);

	return (FUNC2(dev));
}