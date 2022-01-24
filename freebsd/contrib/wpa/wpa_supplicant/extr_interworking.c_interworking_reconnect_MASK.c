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
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; int reassociate; unsigned int interworking_fast_assoc_tried; scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s)
{
	unsigned int tried;

	if (wpa_s->wpa_state >= WPA_AUTHENTICATING) {
		FUNC0(wpa_s);
		wpa_s->own_disconnect_req = 1;
		FUNC1(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);
	}
	wpa_s->disconnected = 0;
	wpa_s->reassociate = 1;
	tried = wpa_s->interworking_fast_assoc_tried;
	wpa_s->interworking_fast_assoc_tried = 1;

	if (!tried && FUNC2(wpa_s) >= 0)
		return;

	wpa_s->interworking_fast_assoc_tried = 0;
	FUNC3(wpa_s, 0, 0);
}