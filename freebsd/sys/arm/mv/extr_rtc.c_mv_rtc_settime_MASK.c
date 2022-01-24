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
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct mv_rtc_softc {int dummy; } ;
struct clocktime {scalar_t__ year; scalar_t__ mon; scalar_t__ day; scalar_t__ dow; scalar_t__ hour; scalar_t__ min; scalar_t__ sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MV_RTC_DATE_REG ; 
 int /*<<< orphan*/  MV_RTC_TIME_REG ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ YEAR_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct clocktime*) ; 
 struct mv_rtc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_rtc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct timespec *ts)
{
	struct clocktime ct;
	struct mv_rtc_softc *sc;
	uint32_t val;

	sc = FUNC2(dev);

	/* Resolution: 1 sec */
	if (ts->tv_nsec >= 500000000)
		ts->tv_sec++;
	ts->tv_nsec = 0;
	FUNC1(ts, &ct);

	val = FUNC0(ct.sec) | (FUNC0(ct.min) << 8) |
	    (FUNC0(ct.hour) << 16) | (FUNC0( ct.dow + 1) << 24);
	FUNC3(sc, MV_RTC_TIME_REG, val);

	val = FUNC0(ct.day) | (FUNC0(ct.mon) << 8) |
	    (FUNC0(ct.year - YEAR_BASE) << 16);
	FUNC3(sc, MV_RTC_DATE_REG, val);

	return (0);
}