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
struct ha_softc {int ha_disconnect; int ha_wakeup; int /*<<< orphan*/  ha_lock; } ;
typedef  int /*<<< orphan*/  ctl_ha_status ;
typedef  int /*<<< orphan*/  ctl_ha_channel ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_STATUS_SUCCESS ; 
 struct ha_softc ha_softc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

ctl_ha_status
FUNC3(ctl_ha_channel channel)
{
	struct ha_softc *softc = &ha_softc;

	FUNC0(&softc->ha_lock);
	softc->ha_disconnect = 1;
	softc->ha_wakeup = 1;
	FUNC1(&softc->ha_lock);
	FUNC2(&softc->ha_wakeup);
	return (CTL_HA_STATUS_SUCCESS);
}