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
struct mv_rtc_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  RTC_RES_US ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mv_rtc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mv_rtc_softc*) ; 
 int /*<<< orphan*/  res_spec ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mv_rtc_softc *sc;
	int unit, ret;

	unit = FUNC4(dev);

	sc = FUNC3(dev);
	sc->dev = dev;

	FUNC1(dev, RTC_RES_US);

	FUNC7(&sc->mutex, FUNC2(dev), NULL, MTX_SPIN);

	ret = FUNC0(dev, res_spec, sc->res);

	if (ret != 0) {
		FUNC5(dev, "could not allocate resources\n");
		FUNC6(&sc->mutex);
		return (ENXIO);
	}
	FUNC8(sc);

	return (0);
}