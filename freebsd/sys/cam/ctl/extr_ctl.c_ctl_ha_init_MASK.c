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
struct ctl_softc {int /*<<< orphan*/  othersc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_CTL ; 
 scalar_t__ CTL_HA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  CTL_POOL_ENTRIES_OTHER_SC ; 
 int EIO ; 
 int ENOMEM ; 
 struct ctl_softc* control_softc ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_softc*) ; 
 scalar_t__ FUNC1 (struct ctl_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_isc_event_handler ; 
 scalar_t__ FUNC3 (struct ctl_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{
	struct ctl_softc *softc = control_softc;

	if (FUNC3(softc, "othersc", CTL_POOL_ENTRIES_OTHER_SC,
	                    &softc->othersc_pool) != 0)
		return (ENOMEM);
	if (FUNC1(softc) != CTL_HA_STATUS_SUCCESS) {
		FUNC4(softc->othersc_pool);
		return (EIO);
	}
	if (FUNC2(CTL_HA_CHAN_CTL, ctl_isc_event_handler)
	    != CTL_HA_STATUS_SUCCESS) {
		FUNC0(softc);
		FUNC4(softc->othersc_pool);
		return (EIO);
	}
	return (0);
}