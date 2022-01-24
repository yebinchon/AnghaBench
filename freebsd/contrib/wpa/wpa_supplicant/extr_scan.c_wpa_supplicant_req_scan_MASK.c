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
struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  wpa_supplicant_scan ; 

void FUNC3(struct wpa_supplicant *wpa_s, int sec, int usec)
{
	int res;

	if (wpa_s->p2p_mgmt) {
		FUNC2(wpa_s, MSG_DEBUG,
			"Ignore scan request (%d.%06d sec) on p2p_mgmt interface",
			sec, usec);
		return;
	}

	res = FUNC0(sec, usec, wpa_supplicant_scan, wpa_s,
				    NULL);
	if (res == 1) {
		FUNC2(wpa_s, MSG_DEBUG, "Rescheduling scan request: %d.%06d sec",
			sec, usec);
	} else if (res == 0) {
		FUNC2(wpa_s, MSG_DEBUG, "Ignore new scan request for %d.%06d sec since an earlier request is scheduled to trigger sooner",
			sec, usec);
	} else {
		FUNC2(wpa_s, MSG_DEBUG, "Setting scan request: %d.%06d sec",
			sec, usec);
		FUNC1(sec, usec, wpa_supplicant_scan, wpa_s, NULL);
	}
}