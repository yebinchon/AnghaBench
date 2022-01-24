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
struct timespec {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct clocktime {scalar_t__ year; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; int /*<<< orphan*/  mon; int /*<<< orphan*/  day; } ;
struct aw_rtc_softc {TYPE_1__* conf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  rtc_time; int /*<<< orphan*/  rtc_date; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ HALF_OF_SEC_NS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int LOSC_BUSY_MASK ; 
 int /*<<< orphan*/  LOSC_CTRL_REG ; 
 int FUNC2 (struct aw_rtc_softc*,int /*<<< orphan*/ ) ; 
 int RTC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct aw_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ YEAR_MAX ; 
 scalar_t__ YEAR_MIN ; 
 scalar_t__ YEAR_OFFSET ; 
 int /*<<< orphan*/  FUNC11 (struct timespec*,struct clocktime*) ; 
 struct aw_rtc_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC14(device_t dev, struct timespec *ts)
{
	struct aw_rtc_softc *sc  = FUNC12(dev);
	struct clocktime ct;
	uint32_t clk, rdate, rtime;

	/* RTC resolution is 1 sec */
	if (ts->tv_nsec >= HALF_OF_SEC_NS)
		ts->tv_sec++;
	ts->tv_nsec = 0;

	FUNC11(ts, &ct);
	
	if ((ct.year < YEAR_MIN) || (ct.year > YEAR_MAX)) {
		FUNC13(dev, "could not set time, year out of range\n");
		return (EINVAL);
	}

	for (clk = 0; FUNC2(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
		if (clk > RTC_TIMEOUT) {
			FUNC13(dev, "could not set time, RTC busy\n");
			return (EINVAL);
		}
		FUNC0(1);
	}
	/* reset time register to avoid unexpected date increment */
	FUNC3(sc, sc->conf->rtc_time, 0);

	rdate = FUNC4(ct.day) | FUNC8(ct.mon) |
		FUNC10(ct.year - YEAR_OFFSET) | 
		FUNC6(FUNC1(ct.year));
			
	rtime = FUNC9(ct.sec) | FUNC7(ct.min) |
		FUNC5(ct.hour);

	for (clk = 0; FUNC2(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
		if (clk > RTC_TIMEOUT) {
			FUNC13(dev, "could not set date, RTC busy\n");
			return (EINVAL);
		}
		FUNC0(1);
	}
	FUNC3(sc, sc->conf->rtc_date, rdate);

	for (clk = 0; FUNC2(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
		if (clk > RTC_TIMEOUT) {
			FUNC13(dev, "could not set time, RTC busy\n");
			return (EINVAL);
		}
		FUNC0(1);
	}
	FUNC3(sc, sc->conf->rtc_time, rtime);

	FUNC0(RTC_TIMEOUT);

	return (0);
}