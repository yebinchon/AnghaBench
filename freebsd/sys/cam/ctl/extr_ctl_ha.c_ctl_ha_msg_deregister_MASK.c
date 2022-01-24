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
struct ha_softc {int /*<<< orphan*/ ** ha_handler; } ;
typedef  int /*<<< orphan*/  ctl_ha_status ;
typedef  size_t ctl_ha_channel ;

/* Variables and functions */
 size_t CTL_HA_CHAN_MAX ; 
 int /*<<< orphan*/  CTL_HA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ha_softc ha_softc ; 

ctl_ha_status
FUNC1(ctl_ha_channel channel)
{
	struct ha_softc *softc = &ha_softc;

	FUNC0(channel < CTL_HA_CHAN_MAX,
	    ("Wrong CTL HA channel %d", channel));
	softc->ha_handler[channel] = NULL;
	return (CTL_HA_STATUS_SUCCESS);
}