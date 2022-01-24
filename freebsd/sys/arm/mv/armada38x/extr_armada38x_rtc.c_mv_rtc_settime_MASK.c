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
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct mv_rtc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ HALF_OF_SEC_NS ; 
 int /*<<< orphan*/  FUNC0 (struct mv_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_rtc_softc*) ; 
 int /*<<< orphan*/  RTC_CLOCK_CORR ; 
 int RTC_NOMINAL_TIMING ; 
 int RTC_NOMINAL_TIMING_MASK ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 int /*<<< orphan*/  RTC_TIME ; 
 struct mv_rtc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mv_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct timespec *ts)
{
	struct mv_rtc_softc *sc;

	sc = FUNC2(dev);

	/* RTC resolution is 1 sec */
	if (ts->tv_nsec >= HALF_OF_SEC_NS)
		ts->tv_sec++;
	ts->tv_nsec = 0;

	FUNC0(sc);

	if ((FUNC3(sc, RTC_CLOCK_CORR) & RTC_NOMINAL_TIMING_MASK) !=
	    RTC_NOMINAL_TIMING) {
		/* RTC was not resetted yet */
		FUNC5(dev);
	}

	/*
	 * According to errata FE-3124064, Write to RTC TIME register
	 * may fail. As a workaround, before writing to RTC TIME register,
	 * issue a dummy write of 0x0 twice to RTC Status register.
	 */
	FUNC4(sc, RTC_STATUS, 0x0);
	FUNC4(sc, RTC_STATUS, 0x0);
	FUNC4(sc, RTC_TIME, ts->tv_sec);

	FUNC1(sc);

	return (0);
}