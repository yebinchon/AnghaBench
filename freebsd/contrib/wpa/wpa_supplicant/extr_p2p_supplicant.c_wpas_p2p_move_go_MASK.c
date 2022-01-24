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
struct wpa_supplicant {int /*<<< orphan*/  ap_iface; int /*<<< orphan*/  current_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC5(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;

	if (!wpa_s->ap_iface || !wpa_s->current_ssid)
		return;

	FUNC2(wpa_s);

	/* Do not move GO in the middle of a CSA */
	if (FUNC0(wpa_s->ap_iface)) {
		FUNC1(MSG_DEBUG,
			   "P2P: CSA is in progress - not moving GO");
		return;
	}

	/*
	 * First, try a channel switch flow. If it is not supported or fails,
	 * take down the GO and bring it up again.
	 */
	if (FUNC3(wpa_s) < 0)
		FUNC4(wpa_s);
}