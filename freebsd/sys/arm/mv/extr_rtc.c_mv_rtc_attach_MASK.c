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
struct mv_rtc_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct mv_rtc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  res_spec ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct mv_rtc_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;

	FUNC1(dev, 1000000);

	if (FUNC0(dev, res_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	return (0);
}