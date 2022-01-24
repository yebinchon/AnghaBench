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
struct tegra_rtc_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tegra_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_BUSY ; 
 int RTC_BUSY_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct tegra_rtc_softc *sc)
{
	int timeout;

	for (timeout = 500; timeout >0; timeout--) {
		if ((FUNC1(sc, RTC_BUSY) & RTC_BUSY_STATUS) == 0)
			break;
		FUNC0(1);
	}
	if (timeout <= 0)
		FUNC2(sc->dev, "Device busy timeouted\n");

}