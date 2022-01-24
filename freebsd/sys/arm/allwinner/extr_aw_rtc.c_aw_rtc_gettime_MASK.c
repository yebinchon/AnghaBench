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
struct timespec {int dummy; } ;
struct clocktime {int dow; scalar_t__ nsec; scalar_t__ year; int /*<<< orphan*/  mon; int /*<<< orphan*/  day; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
struct aw_rtc_softc {TYPE_1__* conf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  rtc_date; int /*<<< orphan*/  rtc_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct aw_rtc_softc*,int /*<<< orphan*/ ) ; 
 int TIME_MASK ; 
 scalar_t__ YEAR_OFFSET ; 
 int FUNC7 (struct clocktime*,struct timespec*) ; 
 struct aw_rtc_softc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct timespec *ts)
{
	struct aw_rtc_softc *sc  = FUNC8(dev);
	struct clocktime ct;
	uint32_t rdate, rtime;

	rdate = FUNC6(sc, sc->conf->rtc_date);
	rtime = FUNC6(sc, sc->conf->rtc_time);
	
	if ((rtime & TIME_MASK) == 0)
		rdate = FUNC6(sc, sc->conf->rtc_date);

	ct.sec = FUNC4(rtime);
	ct.min = FUNC2(rtime);
	ct.hour = FUNC1(rtime);
	ct.day = FUNC0(rdate);
	ct.mon = FUNC3(rdate);
	ct.year = FUNC5(rdate) + YEAR_OFFSET;
	ct.dow = -1;
	/* RTC resolution is 1 sec */
	ct.nsec = 0;
	
	return (FUNC7(&ct, ts));
}