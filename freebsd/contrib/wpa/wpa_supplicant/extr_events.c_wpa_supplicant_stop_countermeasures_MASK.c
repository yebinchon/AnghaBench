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
struct wpa_supplicant {scalar_t__ countermeasures; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *eloop_ctx, void *sock_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;

	if (wpa_s->countermeasures) {
		wpa_s->countermeasures = 0;
		FUNC0(wpa_s, 0);
		FUNC1(wpa_s, MSG_INFO, "WPA: TKIP countermeasures stopped");

		/*
		 * It is possible that the device is sched scanning, which means
		 * that a connection attempt will be done only when we receive
		 * scan results. However, in this case, it would be preferable
		 * to scan and connect immediately, so cancel the sched_scan and
		 * issue a regular scan flow.
		 */
		FUNC2(wpa_s);
		FUNC3(wpa_s, 0, 0);
	}
}