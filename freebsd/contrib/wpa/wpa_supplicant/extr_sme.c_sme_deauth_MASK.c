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
struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {int /*<<< orphan*/  pending_bssid; int /*<<< orphan*/  bssid; TYPE_1__ sme; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  WPA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s)
{
	int bssid_changed;

	bssid_changed = !FUNC0(wpa_s->bssid);

	if (FUNC2(wpa_s, wpa_s->pending_bssid,
				   WLAN_REASON_DEAUTH_LEAVING) < 0) {
		FUNC3(wpa_s, MSG_INFO, "SME: Deauth request to the driver "
			"failed");
	}
	wpa_s->sme.prev_bssid_set = 0;

	FUNC5(wpa_s, wpa_s->pending_bssid);
	FUNC4(wpa_s, WPA_DISCONNECTED);
	FUNC1(wpa_s->bssid, 0, ETH_ALEN);
	FUNC1(wpa_s->pending_bssid, 0, ETH_ALEN);
	if (bssid_changed)
		FUNC6(wpa_s);
}