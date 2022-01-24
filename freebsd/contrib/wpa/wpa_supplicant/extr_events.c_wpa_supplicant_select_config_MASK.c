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
typedef  int /*<<< orphan*/  wpa_ie ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; int /*<<< orphan*/  eapol; int /*<<< orphan*/  bssid; TYPE_1__* conf; } ;
struct wpa_ssid {size_t ssid_len; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {int ap_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SSID_MAX_LEN ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 struct wpa_ssid* FUNC9 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ *,struct wpa_ssid*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC15 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_supplicant*) ; 
 int FUNC17 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC18(struct wpa_supplicant *wpa_s)
{
	struct wpa_ssid *ssid, *old_ssid;
	u8 drv_ssid[SSID_MAX_LEN];
	size_t drv_ssid_len;
	int res;

	if (wpa_s->conf->ap_scan == 1 && wpa_s->current_ssid) {
		FUNC14(wpa_s);

		if (wpa_s->current_ssid->ssid_len == 0)
			return 0; /* current profile still in use */
		res = FUNC5(wpa_s, drv_ssid);
		if (res < 0) {
			FUNC7(wpa_s, MSG_INFO,
				"Failed to read SSID from driver");
			return 0; /* try to use current profile */
		}
		drv_ssid_len = res;

		if (drv_ssid_len == wpa_s->current_ssid->ssid_len &&
		    FUNC3(drv_ssid, wpa_s->current_ssid->ssid,
			      drv_ssid_len) == 0)
			return 0; /* current profile still in use */

		FUNC7(wpa_s, MSG_DEBUG,
			"Driver-initiated BSS selection changed the SSID to %s",
			FUNC8(drv_ssid, drv_ssid_len));
		/* continue selecting a new network profile */
	}

	FUNC4(wpa_s, MSG_DEBUG, "Select network based on association "
		"information");
	ssid = FUNC9(wpa_s);
	if (ssid == NULL) {
		FUNC7(wpa_s, MSG_INFO,
			"No network configuration found for the current AP");
		return -1;
	}

	if (FUNC15(wpa_s, ssid)) {
		FUNC4(wpa_s, MSG_DEBUG, "Selected network is disabled");
		return -1;
	}

	if (FUNC0(wpa_s, wpa_s->bssid) ||
	    FUNC1(wpa_s, ssid->ssid, ssid->ssid_len)) {
		FUNC4(wpa_s, MSG_DEBUG, "Selected BSS is disallowed");
		return -1;
	}

	res = FUNC17(wpa_s, ssid);
	if (res > 0) {
		FUNC4(wpa_s, MSG_DEBUG, "Selected network is temporarily "
			"disabled for %d second(s)", res);
		return -1;
	}

	FUNC4(wpa_s, MSG_DEBUG, "Network configuration found for the "
		"current AP");
	if (FUNC6(ssid->key_mgmt)) {
		u8 wpa_ie[80];
		size_t wpa_ie_len = sizeof(wpa_ie);
		if (FUNC13(wpa_s, NULL, ssid,
					      wpa_ie, &wpa_ie_len) < 0)
			FUNC4(wpa_s, MSG_DEBUG, "Could not set WPA suites");
	} else {
		FUNC12(wpa_s, ssid);
	}

	if (wpa_s->current_ssid && wpa_s->current_ssid != ssid)
		FUNC2(wpa_s->eapol);
	old_ssid = wpa_s->current_ssid;
	wpa_s->current_ssid = ssid;

	FUNC14(wpa_s);

	FUNC11(wpa_s, wpa_s->current_ssid);
	FUNC10(wpa_s);
	if (old_ssid != wpa_s->current_ssid)
		FUNC16(wpa_s);

	return 0;
}