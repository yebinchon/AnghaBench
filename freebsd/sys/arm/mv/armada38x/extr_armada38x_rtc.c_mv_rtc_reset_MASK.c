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
struct mv_rtc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RTC_ALARM_1 ; 
 int /*<<< orphan*/  RTC_ALARM_2 ; 
 int /*<<< orphan*/  RTC_CLOCK_CORR ; 
 int /*<<< orphan*/  RTC_IRQ_1_CONFIG ; 
 int /*<<< orphan*/  RTC_IRQ_2_CONFIG ; 
 int RTC_NOMINAL_TIMING ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 int RTC_STATUS_ALARM1_MASK ; 
 int RTC_STATUS_ALARM2_MASK ; 
 int /*<<< orphan*/  RTC_TEST_CONFIG ; 
 int /*<<< orphan*/  RTC_TIME ; 
 struct mv_rtc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_rtc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct mv_rtc_softc *sc;

	sc = FUNC1(dev);

	/* Reset Test register */
	FUNC2(sc, RTC_TEST_CONFIG, 0);
	FUNC0(500000);

	/* Reset Time register */
	FUNC2(sc, RTC_TIME, 0);
	FUNC0(62);

	/* Reset Status register */
	FUNC2(sc, RTC_STATUS, (RTC_STATUS_ALARM1_MASK | RTC_STATUS_ALARM2_MASK));
	FUNC0(62);

	/* Turn off Int1 and Int2 sources & clear the Alarm count */
	FUNC2(sc, RTC_IRQ_1_CONFIG, 0);
	FUNC2(sc, RTC_IRQ_2_CONFIG, 0);
	FUNC2(sc, RTC_ALARM_1, 0);
	FUNC2(sc, RTC_ALARM_2, 0);

	/* Setup nominal register access timing */
	FUNC2(sc, RTC_CLOCK_CORR, RTC_NOMINAL_TIMING);

	/* Reset Time register */
	FUNC2(sc, RTC_TIME, 0);
	FUNC0(10);

	/* Reset Status register */
	FUNC2(sc, RTC_STATUS, (RTC_STATUS_ALARM1_MASK | RTC_STATUS_ALARM2_MASK));
	FUNC0(50);
}