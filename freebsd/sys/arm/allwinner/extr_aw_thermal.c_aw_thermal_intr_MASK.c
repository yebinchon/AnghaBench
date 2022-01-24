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
struct aw_thermal_softc {int /*<<< orphan*/  cf_task; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ALARM_INT_ALL ; 
 int /*<<< orphan*/  RB_POWEROFF ; 
 int FUNC0 (struct aw_thermal_softc*,int /*<<< orphan*/ ) ; 
 int SHUT_INT_ALL ; 
 int /*<<< orphan*/  THS_INTS ; 
 int /*<<< orphan*/  FUNC1 (struct aw_thermal_softc*,int /*<<< orphan*/ ,int) ; 
 struct aw_thermal_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct aw_thermal_softc *sc;
	device_t dev;
	uint32_t ints;

	dev = arg;
	sc = FUNC2(dev);

	ints = FUNC0(sc, THS_INTS);
	FUNC1(sc, THS_INTS, ints);

	if ((ints & SHUT_INT_ALL) != 0) {
		FUNC3(dev,
		    "WARNING - current temperature exceeds safe limits\n");
		FUNC4(RB_POWEROFF);
	}

	if ((ints & ALARM_INT_ALL) != 0)
		FUNC5(taskqueue_thread, &sc->cf_task);
}