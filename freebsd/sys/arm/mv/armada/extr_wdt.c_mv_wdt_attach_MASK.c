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
struct mv_wdt_softc {struct mv_wdt_config* wdt_config; int /*<<< orphan*/  wdt_mtx; int /*<<< orphan*/  wdt_res; } ;
struct mv_wdt_config {scalar_t__ wdt_clock_src; int /*<<< orphan*/  (* wdt_disable ) () ;} ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mv_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mv_wdt_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_watchdog_event ; 
 int /*<<< orphan*/  mv_wdt_compat ; 
 int /*<<< orphan*/  mv_wdt_spec ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  watchdog_list ; 
 struct mv_wdt_softc* wdt_softc ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct mv_wdt_softc *sc;
	int error;

	if (wdt_softc != NULL)
		return (ENXIO);

	sc = FUNC2(dev);
	wdt_softc = sc;

	error = FUNC1(dev, mv_wdt_spec, &sc->wdt_res);
	if (error) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	FUNC5(&sc->wdt_mtx, "watchdog", NULL, MTX_DEF);

	sc->wdt_config = (struct mv_wdt_config *)
	   FUNC6(dev, mv_wdt_compat)->ocd_data;

	if (sc->wdt_config->wdt_clock_src == 0)
		sc->wdt_config->wdt_clock_src = FUNC4();

	if (wdt_softc->wdt_config->wdt_disable != NULL)
		wdt_softc->wdt_config->wdt_disable();
	FUNC0(watchdog_list, mv_watchdog_event, sc, 0);

	return (0);
}