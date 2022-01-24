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
typedef  int uint32_t ;
struct aw_rtc_softc {struct aw_rtc_conf* conf; int /*<<< orphan*/  res; } ;
struct aw_rtc_conf {int /*<<< orphan*/  rtc_losc_sta; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int LOSC_AUTO_SW_EN ; 
 int /*<<< orphan*/  LOSC_CTRL_REG ; 
 int LOSC_GSM ; 
 int LOSC_MAGIC ; 
 int LOSC_OSC_SRC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int FUNC1 (struct aw_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_RES_US ; 
 int /*<<< orphan*/  FUNC2 (struct aw_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct aw_rtc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 struct aw_rtc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct aw_rtc_softc *sc  = FUNC6(dev);
	uint32_t val;
	int rid = 0;

	sc->res = FUNC4(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!sc->res) {
		FUNC7(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->conf = (struct aw_rtc_conf *)FUNC8(dev, compat_data)->ocd_data;
	val = FUNC1(sc, LOSC_CTRL_REG);
	val |= LOSC_AUTO_SW_EN;
	val |= LOSC_MAGIC | LOSC_GSM | LOSC_OSC_SRC;
	FUNC2(sc, LOSC_CTRL_REG, val);

	FUNC0(100);

	if (bootverbose) {
		val = FUNC1(sc, sc->conf->rtc_losc_sta);
		if ((val & LOSC_OSC_SRC) == 0)
			FUNC7(dev, "Using internal oscillator\n");
		else
			FUNC7(dev, "Using external oscillator\n");
	}

	FUNC3(sc, dev);

	FUNC5(dev, RTC_RES_US);
	
	return (0);
}