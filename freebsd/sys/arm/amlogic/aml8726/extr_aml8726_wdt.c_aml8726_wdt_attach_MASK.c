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
struct aml8726_wdt_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  ih_cookie; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ctrl_cpu_mask; int ctrl_en; int term_cnt_mask; int reset_cnt_mask; } ;

/* Variables and functions */
#define  AML_SOC_HW_REV_M8 130 
#define  AML_SOC_HW_REV_M8B 129 
#define  AML_SOC_M8_METAL_REV_M2_A 128 
 int AML_WDT_CTRL_CPU_WDRESET_SHIFT ; 
 int AML_WDT_CTRL_EN ; 
 int AML_WDT_CTRL_IRQ_EN ; 
 int /*<<< orphan*/  AML_WDT_CTRL_REG ; 
 int AML_WDT_CTRL_TERMINAL_CNT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_wdt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_wdt_softc*) ; 
 int AML_WDT_RESET_CNT_SHIFT ; 
 int FUNC2 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aml8726_wdt_softc*,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int aml8726_soc_hw_rev ; 
 int /*<<< orphan*/  aml8726_soc_metal_rev ; 
 int /*<<< orphan*/  aml8726_wdt_intr ; 
 struct aml8726_wdt_softc* aml8726_wdt_sc ; 
 TYPE_1__ aml8726_wdt_soc_params ; 
 int /*<<< orphan*/  aml8726_wdt_spec ; 
 int /*<<< orphan*/  aml8726_wdt_watchdog ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aml8726_wdt_softc*,int /*<<< orphan*/ *) ; 
 struct aml8726_wdt_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct aml8726_wdt_softc *sc = FUNC8(dev);

	/* There should be exactly one instance. */
	if (aml8726_wdt_sc != NULL)
		return (ENXIO);

	sc->dev = dev;

	if (FUNC5(dev, aml8726_wdt_spec, sc->res)) {
		FUNC9(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	/*
	 * Certain bitfields are dependent on the hardware revision.
	 */
	switch (aml8726_soc_hw_rev) {
	case AML_SOC_HW_REV_M8:
		aml8726_wdt_soc_params.ctrl_cpu_mask = 0xf <<
		    AML_WDT_CTRL_CPU_WDRESET_SHIFT;
		switch (aml8726_soc_metal_rev) {
		case AML_SOC_M8_METAL_REV_M2_A:
			aml8726_wdt_soc_params.ctrl_en = 1 << 19;
			aml8726_wdt_soc_params.term_cnt_mask = 0x07ffff <<
			    AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
			aml8726_wdt_soc_params.reset_cnt_mask = 0x07ffff <<
			    AML_WDT_RESET_CNT_SHIFT;
			break;
		default:
			aml8726_wdt_soc_params.ctrl_en = 1 << 22;
			aml8726_wdt_soc_params.term_cnt_mask = 0x3fffff <<
			    AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
			aml8726_wdt_soc_params.reset_cnt_mask = 0x3fffff <<
			    AML_WDT_RESET_CNT_SHIFT;
			break;
		}
		break;
	case AML_SOC_HW_REV_M8B:
		aml8726_wdt_soc_params.ctrl_cpu_mask = 0xf <<
		    AML_WDT_CTRL_CPU_WDRESET_SHIFT;
		aml8726_wdt_soc_params.ctrl_en = 1 << 19;
		aml8726_wdt_soc_params.term_cnt_mask = 0x07ffff <<
		    AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
		aml8726_wdt_soc_params.reset_cnt_mask = 0x07ffff <<
		    AML_WDT_RESET_CNT_SHIFT;
		break;
	default:
		aml8726_wdt_soc_params.ctrl_cpu_mask = 3 <<
		    AML_WDT_CTRL_CPU_WDRESET_SHIFT;
		aml8726_wdt_soc_params.ctrl_en = 1 << 22;
		aml8726_wdt_soc_params.term_cnt_mask = 0x3fffff <<
		    AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
		aml8726_wdt_soc_params.reset_cnt_mask = 0x3fffff <<
		    AML_WDT_RESET_CNT_SHIFT;
		break;
	}

	/*
	 * Disable the watchdog.
	 */
	FUNC3(sc, AML_WDT_CTRL_REG,
	    (FUNC2(sc, AML_WDT_CTRL_REG) & ~(AML_WDT_CTRL_IRQ_EN |
	    AML_WDT_CTRL_EN)));

	/*
	 * Initialize the mutex prior to installing the interrupt handler
	 * in case of a spurious interrupt.
	 */
	FUNC1(sc);

	if (FUNC7(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    aml8726_wdt_intr, NULL, sc, &sc->ih_cookie)) {
		FUNC9(dev, "could not setup interrupt handler\n");
		FUNC6(dev, aml8726_wdt_spec, sc->res);
		FUNC0(sc);
		return (ENXIO);
	}

	aml8726_wdt_sc = sc;

	FUNC4(watchdog_list, aml8726_wdt_watchdog, sc, 0);

	return (0);
}