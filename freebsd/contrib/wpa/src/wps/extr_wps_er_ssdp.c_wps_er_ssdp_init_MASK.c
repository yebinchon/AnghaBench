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
struct wps_er {scalar_t__ multicast_sd; scalar_t__ ssdp_sd; int /*<<< orphan*/ * ifname; scalar_t__ forced_ifname; int /*<<< orphan*/  ip_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_er*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er*) ; 
 int /*<<< orphan*/  wps_er_ssdp_rx ; 

int FUNC6(struct wps_er *er)
{
	if (FUNC0(er->ifname)) {
		FUNC4(MSG_INFO, "WPS ER: Failed to add routing entry for "
			   "SSDP");
		return -1;
	}

	er->multicast_sd = FUNC3(er->ip_addr,
						    er->forced_ifname ?
						    er->ifname : NULL);
	if (er->multicast_sd < 0) {
		FUNC4(MSG_INFO, "WPS ER: Failed to open multicast socket "
			   "for SSDP");
		return -1;
	}

	er->ssdp_sd = FUNC2();
	if (er->ssdp_sd < 0) {
		FUNC4(MSG_INFO, "WPS ER: Failed to open SSDP listener "
			   "socket");
		return -1;
	}

	if (FUNC1(er->multicast_sd, EVENT_TYPE_READ,
				wps_er_ssdp_rx, er, NULL) ||
	    FUNC1(er->ssdp_sd, EVENT_TYPE_READ,
				wps_er_ssdp_rx, er, NULL))
		return -1;

	FUNC5(er);

	return 0;
}