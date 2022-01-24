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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct timespec {int dummy; } ;
struct tegra_rtc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_rtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_rtc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_rtc_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct timespec *ts)
{
	struct tegra_rtc_softc *sc;
	struct timeval tv;

	sc = FUNC4(dev);

	FUNC0(sc);
	FUNC1(&tv, ts);
	FUNC5(sc);
	FUNC3(sc, RTC_SECONDS, tv.tv_sec);
	FUNC2(sc);

	return (0);
}