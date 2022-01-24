#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ha_softc {int ha_disconnect; int ha_shutdown; int ha_connected; int ha_receiving; int /*<<< orphan*/  ha_lock; scalar_t__ ha_wakeup; TYPE_3__* ha_so; TYPE_1__* ha_ctl_softc; scalar_t__ ha_connect; scalar_t__ ha_listen; int /*<<< orphan*/ * ha_lso; } ;
struct TYPE_5__ {int sb_state; } ;
struct TYPE_6__ {scalar_t__ so_error; int so_state; TYPE_2__ so_rcv; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctl_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_MAX ; 
 int /*<<< orphan*/  CTL_HA_EVT_LINK_CHANGE ; 
 int /*<<< orphan*/  CTL_HA_LINK_ONLINE ; 
 int SBS_CANTRCVMORE ; 
 int SS_ISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct ha_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ha_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ha_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ha_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ha_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ha_softc*) ; 
 int /*<<< orphan*/  ctl_ha_rx_thread ; 
 int /*<<< orphan*/  FUNC6 (struct ha_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ha_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC14(void *arg)
{
	struct ha_softc *softc = arg;
	int error;

	while (1) {
		if (softc->ha_disconnect || softc->ha_shutdown) {
			FUNC1(softc);
			if (softc->ha_disconnect == 2 || softc->ha_shutdown)
				FUNC4(softc);
			softc->ha_disconnect = 0;
			if (softc->ha_shutdown)
				break;
		} else if (softc->ha_so != NULL &&
		    (softc->ha_so->so_error ||
		     softc->ha_so->so_rcv.sb_state & SBS_CANTRCVMORE))
			FUNC1(softc);
		if (softc->ha_so == NULL) {
			if (softc->ha_lso != NULL)
				FUNC0(softc);
			else if (softc->ha_listen)
				FUNC5(softc);
			else if (softc->ha_connect)
				FUNC2(softc);
		}
		if (softc->ha_so != NULL) {
			if (softc->ha_connected == 0 &&
			    softc->ha_so->so_error == 0 &&
			    (softc->ha_so->so_state & SS_ISCONNECTING) == 0) {
				softc->ha_connected = 1;
				FUNC3(softc, CTL_HA_CHAN_MAX,
				    CTL_HA_EVT_LINK_CHANGE,
				    CTL_HA_LINK_ONLINE);
				softc->ha_receiving = 1;
				error = FUNC7(ctl_ha_rx_thread,
				    softc, &softc->ha_ctl_softc->ctl_proc,
				    NULL, 0, 0, "ctl", "ha_rx");
				if (error != 0) {
					FUNC12("Error creating CTL HA rx thread!\n");
					softc->ha_receiving = 0;
					softc->ha_disconnect = 1;
				}
			}
			FUNC6(softc);
		}
		FUNC10(&softc->ha_lock);
		if (softc->ha_so != NULL &&
		    (softc->ha_so->so_error ||
		     softc->ha_so->so_rcv.sb_state & SBS_CANTRCVMORE))
			;
		else if (!softc->ha_wakeup)
			FUNC9(&softc->ha_wakeup, &softc->ha_lock, 0, "-", hz);
		softc->ha_wakeup = 0;
		FUNC11(&softc->ha_lock);
	}
	FUNC10(&softc->ha_lock);
	softc->ha_shutdown = 2;
	FUNC13(&softc->ha_wakeup);
	FUNC11(&softc->ha_lock);
	FUNC8();
}