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
struct ha_softc {int ha_shutdown; int ha_wakeup; int /*<<< orphan*/  ha_lock; } ;
struct ctl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ha_softc ha_softc ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

void
FUNC5(struct ctl_softc *ctl_softc)
{
	struct ha_softc *softc = &ha_softc;

	/* Disconnect and shutdown threads. */
	FUNC2(&softc->ha_lock);
	if (softc->ha_shutdown < 2) {
		softc->ha_shutdown = 1;
		softc->ha_wakeup = 1;
		FUNC4(&softc->ha_wakeup);
		while (softc->ha_shutdown < 2 && !FUNC0()) {
			FUNC1(&softc->ha_wakeup, &softc->ha_lock, 0,
			    "shutdown", hz);
		}
	}
	FUNC3(&softc->ha_lock);
}