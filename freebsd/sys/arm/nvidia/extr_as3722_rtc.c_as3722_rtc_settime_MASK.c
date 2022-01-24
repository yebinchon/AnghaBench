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
typedef  int /*<<< orphan*/  uint8_t ;
struct timespec {int dummy; } ;
struct clocktime {scalar_t__ year; scalar_t__ sec; scalar_t__ min; scalar_t__ hour; scalar_t__ day; scalar_t__ mon; } ;
struct as3722_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_RTC_SECOND ; 
 scalar_t__ AS3722_RTC_START_YEAR ; 
 int EINVAL ; 
 int FUNC0 (struct as3722_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct clocktime*) ; 
 struct as3722_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(device_t dev, struct timespec *ts)
{
	struct as3722_softc *sc;
	struct clocktime ct;
	uint8_t buf[6];
	int rv;

	sc = FUNC3(dev);
	FUNC2(ts, &ct);

	if (ct.year < AS3722_RTC_START_YEAR)
		return (EINVAL);

	buf[0] = FUNC1(ct.sec);
	buf[1] = FUNC1(ct.min);
	buf[2] = FUNC1(ct.hour);
	buf[3] = FUNC1(ct.day);
	buf[4] = FUNC1(ct.mon);
	buf[5] = FUNC1(ct.year - AS3722_RTC_START_YEAR);

	rv = FUNC0(sc, AS3722_RTC_SECOND, buf, 6);
	if (rv != 0) {
		FUNC4(sc->dev, "Failed to write RTC data\n");
		return (rv);
	}
	return (0);
}