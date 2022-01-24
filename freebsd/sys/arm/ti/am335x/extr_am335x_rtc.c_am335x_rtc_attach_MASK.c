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
struct am335x_rtc_softc {int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_irq_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int PMIC_PWR_ENABLE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RTC_CLK ; 
 int /*<<< orphan*/  RTC_CTRL ; 
 int /*<<< orphan*/  RTC_INTR ; 
 int /*<<< orphan*/  RTC_KICK0R ; 
 int RTC_KICK0R_PASS ; 
 int /*<<< orphan*/  RTC_KICK1R ; 
 int RTC_KICK1R_PASS ; 
 int /*<<< orphan*/  FUNC0 (struct am335x_rtc_softc*) ; 
 int /*<<< orphan*/  RTC_OSC ; 
 int RTC_OSC_32KCLK_EN ; 
 int RTC_OSC_32KCLK_SEL ; 
 int /*<<< orphan*/  RTC_PMIC ; 
 int FUNC1 (struct am335x_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_REVISION ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 int RTC_STATUS_ALARM ; 
 int RTC_STATUS_ALARM2 ; 
 int /*<<< orphan*/  FUNC2 (struct am335x_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  am335x_rtc_irq_spec ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct am335x_rtc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 struct am335x_rtc_softc* rtc_sc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	int rid;
	struct am335x_rtc_softc *sc;
	uint32_t rev;

	if (rtc_sc != NULL)
		return (ENXIO);
	rtc_sc = sc = FUNC6(dev);
	sc->sc_dev = dev;
	rid = 0;
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC7(dev, "cannot allocate memory resources\n");
		return (ENXIO);
	}
	if (FUNC4(dev, am335x_rtc_irq_spec, sc->sc_irq_res) != 0) {
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC7(dev, "cannot allocate irq resources\n");
		return (ENXIO);
	}
	FUNC0(sc);

	/* Enable the RTC module. */
	FUNC8(RTC_CLK);
	rev = FUNC1(sc, RTC_REVISION);
	FUNC7(dev, "AM335X RTC v%d.%d.%d\n",
            (rev >> 8) & 0x7, (rev >> 6) & 0x3, rev & 0x3f);
	/* Unlock the RTC. */
	FUNC2(sc, RTC_KICK0R, RTC_KICK0R_PASS);
	FUNC2(sc, RTC_KICK1R, RTC_KICK1R_PASS);
	/* Stop the RTC, we don't need it right now. */
	FUNC2(sc, RTC_CTRL, 0);
	/* Disable interrupts. */
	FUNC2(sc, RTC_INTR, 0);
	/* Ack any pending interrupt. */
	FUNC2(sc, RTC_STATUS, RTC_STATUS_ALARM2 | RTC_STATUS_ALARM);
	/* Enable external clock (xtal) and 32 kHz clock. */
	FUNC2(sc, RTC_OSC, RTC_OSC_32KCLK_EN | RTC_OSC_32KCLK_SEL);
	/* Enable pmic_pwr_enable. */
	FUNC2(sc, RTC_PMIC, PMIC_PWR_ENABLE);

	return (0);
}