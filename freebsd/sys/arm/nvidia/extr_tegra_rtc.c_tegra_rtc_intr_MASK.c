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
typedef  int /*<<< orphan*/  uint32_t ;
struct tegra_rtc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_rtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct tegra_rtc_softc *sc;
	uint32_t status;

	sc = (struct tegra_rtc_softc *)arg;
	FUNC0(sc);
	status = FUNC1(sc, RTC_INTR_STATUS);
	FUNC3(sc, RTC_INTR_STATUS, status);
	FUNC2(sc);
}