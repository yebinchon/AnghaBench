#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int always; int xo; int gpo; } ;
struct aml8726_rtc_softc {int /*<<< orphan*/  res; TYPE_1__ init; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*) ; 
#define  AML_SOC_HW_REV_M3 131 
#define  AML_SOC_HW_REV_M6 130 
#define  AML_SOC_HW_REV_M8 129 
#define  AML_SOC_HW_REV_M8B 128 
 int ENXIO ; 
 scalar_t__ FUNC1 (struct aml8726_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_rtc_softc*) ; 
 int /*<<< orphan*/  aml8726_rtc_spec ; 
 int aml8726_soc_hw_rev ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct aml8726_rtc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct aml8726_rtc_softc *sc = FUNC6(dev);

	sc->dev = dev;

	switch (aml8726_soc_hw_rev) {
	case AML_SOC_HW_REV_M3:
		sc->init.always = true;
		sc->init.xo = 0x3c0a;
		sc->init.gpo = 0x100000;
		break;
	case AML_SOC_HW_REV_M6:
	case AML_SOC_HW_REV_M8:
	case AML_SOC_HW_REV_M8B:
		sc->init.always = false;
		sc->init.xo = 0x180a;
		sc->init.gpo = 0x500000;
		break;
	default:
		FUNC7(dev, "unsupported SoC\n");
		return (ENXIO);
		/* NOTREACHED */
	}

	if (FUNC3(dev, aml8726_rtc_spec, sc->res)) {
		FUNC7(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	FUNC2(sc);

	if (FUNC1(sc) != 0) {
		FUNC7(dev, "crystal oscillator check failed\n");

		FUNC4(dev, aml8726_rtc_spec, sc->res);

		return (ENXIO);
	}

	FUNC0(sc);

	FUNC5(dev, 1000000);

	return (0);
}