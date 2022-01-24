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
struct wpabuf {int dummy; } ;
struct advertisement_state_machine {scalar_t__ state; int /*<<< orphan*/  type; } ;
struct upnp_wps_device_sm {scalar_t__ multicast_sd; struct advertisement_state_machine advertisement; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISE_DOWN ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  UPNP_MULTICAST_ADDRESS ; 
 int /*<<< orphan*/  UPNP_MULTICAST_PORT ; 
 int /*<<< orphan*/  advertisement_state_machine_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct upnp_wps_device_sm*,struct advertisement_state_machine*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 

void FUNC11(struct upnp_wps_device_sm *sm,
				      int send_byebye)
{
	struct advertisement_state_machine *a = &sm->advertisement;
	int islast = 0;
	struct wpabuf *msg;
	struct sockaddr_in dest;

	FUNC0(advertisement_state_machine_handler, NULL, sm);
	if (!send_byebye || sm->multicast_sd < 0)
		return;

	a->type = ADVERTISE_DOWN;
	a->state = 0;

	FUNC4(&dest, 0, sizeof(dest));
	dest.sin_family = AF_INET;
	dest.sin_addr.s_addr = FUNC2(UPNP_MULTICAST_ADDRESS);
	dest.sin_port = FUNC1(UPNP_MULTICAST_PORT);

	while (!islast) {
		msg = FUNC3(sm, a, &islast);
		if (msg == NULL)
			break;
		if (FUNC5(sm->multicast_sd, FUNC9(msg), FUNC10(msg),
			   0, (struct sockaddr *) &dest, sizeof(dest)) < 0) {
			FUNC7(MSG_INFO, "WPS UPnP: Advertisement sendto "
				   "failed: %d (%s)", errno, FUNC6(errno));
		}
		FUNC8(msg);
		a->state++;
	}
}