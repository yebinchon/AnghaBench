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
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct tegra_rtc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_rtc_softc*) ; 
 int FUNC1 (struct tegra_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_MILLI_SECONDS ; 
 int /*<<< orphan*/  RTC_SHADOW_SECONDS ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_rtc_softc*) ; 
 struct tegra_rtc_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct tegra_rtc_softc *sc;
	struct timeval tv;
	uint32_t msec, sec;

	sc = FUNC4(dev);

	FUNC0(sc);
	msec = FUNC1(sc, RTC_MILLI_SECONDS);
	sec = FUNC1(sc, RTC_SHADOW_SECONDS);
	FUNC3(sc);
	tv.tv_sec = sec;
	tv.tv_usec = msec * 1000;
	FUNC2(&tv, ts);
	return (0);
}