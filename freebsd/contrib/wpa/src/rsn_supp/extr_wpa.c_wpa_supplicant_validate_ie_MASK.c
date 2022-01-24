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
struct wpa_sm {scalar_t__ ap_wpa_ie_len; scalar_t__ proto; int /*<<< orphan*/  key_mgmt; scalar_t__ rsn_enabled; int /*<<< orphan*/ * ap_rsn_ie; int /*<<< orphan*/  ap_rsn_ie_len; int /*<<< orphan*/ * ap_wpa_ie; TYPE_1__* ctx; } ;
struct wpa_eapol_ie_parse {scalar_t__ wpa_ie_len; int /*<<< orphan*/  rsn_ie_len; int /*<<< orphan*/ * rsn_ie; int /*<<< orphan*/ * wpa_ie; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ WPA_PROTO_WPA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_sm*,char*,unsigned char const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wpa_sm*) ; 
 scalar_t__ FUNC7 (struct wpa_sm*,unsigned char const*,struct wpa_eapol_ie_parse*) ; 

__attribute__((used)) static int FUNC8(struct wpa_sm *sm,
				      const unsigned char *src_addr,
				      struct wpa_eapol_ie_parse *ie)
{
	if (sm->ap_wpa_ie == NULL && sm->ap_rsn_ie == NULL) {
		FUNC2(sm->ctx->msg_ctx, MSG_DEBUG,
			"WPA: No WPA/RSN IE for this AP known. "
			"Trying to get from scan results");
		if (FUNC6(sm) < 0) {
			FUNC4(sm->ctx->msg_ctx, MSG_WARNING,
				"WPA: Could not find AP from "
				"the scan results");
		} else {
			FUNC4(sm->ctx->msg_ctx, MSG_DEBUG,
				"WPA: Found the current AP from "
				"updated scan results");
		}
	}

	if (ie->wpa_ie == NULL && ie->rsn_ie == NULL &&
	    (sm->ap_wpa_ie || sm->ap_rsn_ie)) {
		FUNC5(sm, "IE in 3/4 msg does not match "
				       "with IE in Beacon/ProbeResp (no IE?)",
				       src_addr, ie->wpa_ie, ie->wpa_ie_len,
				       ie->rsn_ie, ie->rsn_ie_len);
		return -1;
	}

	if ((ie->wpa_ie && sm->ap_wpa_ie &&
	     (ie->wpa_ie_len != sm->ap_wpa_ie_len ||
	      FUNC0(ie->wpa_ie, sm->ap_wpa_ie, ie->wpa_ie_len) != 0)) ||
	    (ie->rsn_ie && sm->ap_rsn_ie &&
	     FUNC1(FUNC3(sm->key_mgmt),
				sm->ap_rsn_ie, sm->ap_rsn_ie_len,
				ie->rsn_ie, ie->rsn_ie_len))) {
		FUNC5(sm, "IE in 3/4 msg does not match "
				       "with IE in Beacon/ProbeResp",
				       src_addr, ie->wpa_ie, ie->wpa_ie_len,
				       ie->rsn_ie, ie->rsn_ie_len);
		return -1;
	}

	if (sm->proto == WPA_PROTO_WPA &&
	    ie->rsn_ie && sm->ap_rsn_ie == NULL && sm->rsn_enabled) {
		FUNC5(sm, "Possible downgrade attack "
				       "detected - RSN was enabled and RSN IE "
				       "was in msg 3/4, but not in "
				       "Beacon/ProbeResp",
				       src_addr, ie->wpa_ie, ie->wpa_ie_len,
				       ie->rsn_ie, ie->rsn_ie_len);
		return -1;
	}

#ifdef CONFIG_IEEE80211R
	if (wpa_key_mgmt_ft(sm->key_mgmt) &&
	    wpa_supplicant_validate_ie_ft(sm, src_addr, ie) < 0)
		return -1;
#endif /* CONFIG_IEEE80211R */

	return 0;
}