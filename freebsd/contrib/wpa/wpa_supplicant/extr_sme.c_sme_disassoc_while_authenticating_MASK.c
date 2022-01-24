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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/  pending_bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SME_AUTH_TIMEOUT ; 
 int /*<<< orphan*/  WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sme_auth_timer ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

void FUNC5(struct wpa_supplicant *wpa_s,
				       const u8 *prev_pending_bssid)
{
	/*
	 * mac80211-workaround to force deauth on failed auth cmd,
	 * requires us to remain in authenticating state to allow the
	 * second authentication attempt to be continued properly.
	 */
	FUNC3(wpa_s, MSG_DEBUG, "SME: Allow pending authentication "
		"to proceed after disconnection event");
	FUNC4(wpa_s, WPA_AUTHENTICATING);
	FUNC2(wpa_s->pending_bssid, prev_pending_bssid, ETH_ALEN);

	/*
	 * Re-arm authentication timer in case auth fails for whatever reason.
	 */
	FUNC0(sme_auth_timer, wpa_s, NULL);
	FUNC1(SME_AUTH_TIMEOUT, 0, sme_auth_timer, wpa_s,
			       NULL);
}