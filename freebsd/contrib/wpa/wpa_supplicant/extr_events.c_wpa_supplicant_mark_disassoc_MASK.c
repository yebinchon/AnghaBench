#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ usec; scalar_t__ sec; } ;
struct wpa_supplicant {scalar_t__ wpa_state; scalar_t__ key_mgmt; scalar_t__ enabled_4addr_mode; scalar_t__ ieee80211ac; int /*<<< orphan*/  last_tk; int /*<<< orphan*/  last_tk_alg; scalar_t__ wnmsleep_used; int /*<<< orphan*/  eapol; int /*<<< orphan*/ * current_ssid; scalar_t__ ap_ies_from_associnfo; scalar_t__ assoc_freq; int /*<<< orphan*/ * current_bss; int /*<<< orphan*/  pending_bssid; int /*<<< orphan*/  bssid; TYPE_1__ session_start; int /*<<< orphan*/  session_length; int /*<<< orphan*/ * ibss_rsn; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  WPA_ALG_NONE ; 
 int /*<<< orphan*/  WPA_DISCONNECTED ; 
 scalar_t__ WPA_INTERFACE_DISABLED ; 
 scalar_t__ WPA_KEY_MGMT_DPP ; 
 scalar_t__ WPA_KEY_MGMT_OWE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC19 (struct wpa_supplicant*) ; 

void FUNC20(struct wpa_supplicant *wpa_s)
{
	int bssid_changed;

	FUNC10(wpa_s);

#ifdef CONFIG_IBSS_RSN
	ibss_rsn_deinit(wpa_s->ibss_rsn);
	wpa_s->ibss_rsn = NULL;
#endif /* CONFIG_IBSS_RSN */

#ifdef CONFIG_AP
	wpa_supplicant_ap_deinit(wpa_s);
#endif /* CONFIG_AP */

#ifdef CONFIG_HS20
	/* Clear possibly configured frame filters */
	wpa_drv_configure_frame_filters(wpa_s, 0);
#endif /* CONFIG_HS20 */

	if (wpa_s->wpa_state == WPA_INTERFACE_DISABLED)
		return;

	if (FUNC8(&wpa_s->session_start)) {
		FUNC7(&wpa_s->session_start, &wpa_s->session_length);
		wpa_s->session_start.sec = 0;
		wpa_s->session_start.usec = 0;
		FUNC18(wpa_s);
	}

	FUNC16(wpa_s, WPA_DISCONNECTED);
	bssid_changed = !FUNC5(wpa_s->bssid);
	FUNC6(wpa_s->bssid, 0, ETH_ALEN);
	FUNC6(wpa_s->pending_bssid, 0, ETH_ALEN);
	FUNC9(wpa_s);
	wpa_s->current_bss = NULL;
	wpa_s->assoc_freq = 0;

	if (bssid_changed)
		FUNC17(wpa_s);

	FUNC2(wpa_s->eapol, FALSE);
	FUNC3(wpa_s->eapol, FALSE);
	if (FUNC14(wpa_s->key_mgmt) ||
	    wpa_s->key_mgmt == WPA_KEY_MGMT_OWE ||
	    wpa_s->key_mgmt == WPA_KEY_MGMT_DPP)
		FUNC1(wpa_s->eapol, FALSE);
	wpa_s->ap_ies_from_associnfo = 0;
	wpa_s->current_ssid = NULL;
	FUNC0(wpa_s->eapol, NULL, NULL);
	wpa_s->key_mgmt = 0;

	FUNC19(wpa_s);
	wpa_s->wnmsleep_used = 0;
	FUNC11(wpa_s);

#ifdef CONFIG_TESTING_OPTIONS
	wpa_s->last_tk_alg = WPA_ALG_NONE;
	os_memset(wpa_s->last_tk, 0, sizeof(wpa_s->last_tk));
#endif /* CONFIG_TESTING_OPTIONS */
	wpa_s->ieee80211ac = 0;

	if (wpa_s->enabled_4addr_mode && FUNC13(wpa_s, 0) == 0)
		wpa_s->enabled_4addr_mode = 0;
}