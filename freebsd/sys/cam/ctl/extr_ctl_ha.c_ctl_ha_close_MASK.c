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
struct socket {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;
struct ha_softc {scalar_t__ ha_listen; scalar_t__ ha_connect; struct socket* ha_so; scalar_t__ ha_receiving; int /*<<< orphan*/ * ha_sending; int /*<<< orphan*/  ha_sendq; scalar_t__ ha_connected; scalar_t__ ha_disconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HA_CHAN_MAX ; 
 int /*<<< orphan*/  CTL_HA_EVT_LINK_CHANGE ; 
 int /*<<< orphan*/  CTL_HA_LINK_OFFLINE ; 
 int /*<<< orphan*/  CTL_HA_LINK_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  SO_SND ; 
 int /*<<< orphan*/  FUNC3 (struct ha_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC11(struct ha_softc *softc)
{
	struct socket *so = softc->ha_so;
	int report = 0;

	if (softc->ha_connected || softc->ha_disconnect) {
		softc->ha_connected = 0;
		FUNC5(&softc->ha_sendq);
		FUNC4(softc->ha_sending);
		softc->ha_sending = NULL;
		report = 1;
	}
	if (so) {
		FUNC0(&so->so_rcv);
		FUNC9(so, SO_RCV);
		while (softc->ha_receiving) {
			FUNC10(&softc->ha_receiving);
			FUNC6(&softc->ha_receiving, FUNC1(&so->so_rcv),
			    0, "ha_rx exit", 0);
		}
		FUNC2(&so->so_rcv);
		FUNC0(&so->so_snd);
		FUNC9(so, SO_SND);
		FUNC2(&so->so_snd);
		softc->ha_so = NULL;
		if (softc->ha_connect)
			FUNC7("reconnect", hz / 2);
		FUNC8(so);
	}
	if (report) {
		FUNC3(softc, CTL_HA_CHAN_MAX, CTL_HA_EVT_LINK_CHANGE,
		    (softc->ha_connect || softc->ha_listen) ?
		    CTL_HA_LINK_UNKNOWN : CTL_HA_LINK_OFFLINE);
	}
}