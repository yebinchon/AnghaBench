#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_3__* global; TYPE_2__* wps; scalar_t__ p2p_scan_work; } ;
struct wpa_driver_scan_params {int num_ssids; int* freqs; int p2p_probe; size_t* extra_ies; void* extra_ies_len; TYPE_1__* ssids; } ;
typedef  enum p2p_scan_type { ____Placeholder_p2p_scan_type } p2p_scan_type ;
struct TYPE_8__ {int p2p; } ;
struct TYPE_7__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  uuid; TYPE_4__ dev; } ;
struct TYPE_5__ {size_t* ssid; void* ssid_len; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  P2P_SCAN_FULL 131 
#define  P2P_SCAN_SOCIAL 130 
#define  P2P_SCAN_SOCIAL_PLUS_ONE 129 
#define  P2P_SCAN_SPECIFIC 128 
 int /*<<< orphan*/  P2P_WILDCARD_SSID ; 
 void* P2P_WILDCARD_SSID_LEN ; 
 int /*<<< orphan*/  WPS_REQ_ENROLLEE ; 
 void* FUNC1 (int,int) ; 
 size_t* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,void*) ; 
 struct wpa_driver_scan_params* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wpabuf*,size_t const*,unsigned int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_driver_scan_params*) ; 
 struct wpabuf* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 void* FUNC15 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,struct wpabuf*) ; 
 unsigned int FUNC17 (struct wpa_supplicant*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  wpas_p2p_trigger_scan_cb ; 
 struct wpabuf* FUNC19 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,size_t const*) ; 

__attribute__((used)) static int FUNC20(void *ctx, enum p2p_scan_type type, int freq,
			 unsigned int num_req_dev_types,
			 const u8 *req_dev_types, const u8 *dev_id, u16 pw_id)
{
	struct wpa_supplicant *wpa_s = ctx;
	struct wpa_driver_scan_params *params = NULL;
	struct wpabuf *wps_ie, *ies;
	unsigned int num_channels = 0;
	int social_channels_freq[] = { 2412, 2437, 2462, 60480 };
	size_t ielen;
	u8 *n, i;
	unsigned int bands;

	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return -1;

	if (wpa_s->p2p_scan_work) {
		FUNC10(wpa_s, MSG_INFO, "P2P: Reject scan trigger since one is already pending");
		return -1;
	}

	params = FUNC4(sizeof(*params));
	if (params == NULL)
		return -1;

	/* P2P Wildcard SSID */
	params->num_ssids = 1;
	n = FUNC2(P2P_WILDCARD_SSID_LEN);
	if (n == NULL)
		goto fail;
	FUNC3(n, P2P_WILDCARD_SSID, P2P_WILDCARD_SSID_LEN);
	params->ssids[0].ssid = n;
	params->ssids[0].ssid_len = P2P_WILDCARD_SSID_LEN;

	wpa_s->wps->dev.p2p = 1;
	wps_ie = FUNC19(pw_id, &wpa_s->wps->dev,
					wpa_s->wps->uuid, WPS_REQ_ENROLLEE,
					num_req_dev_types, req_dev_types);
	if (wps_ie == NULL)
		goto fail;

	switch (type) {
	case P2P_SCAN_SOCIAL:
		params->freqs = FUNC1(FUNC0(social_channels_freq) + 1,
					  sizeof(int));
		if (params->freqs == NULL)
			goto fail;
		for (i = 0; i < FUNC0(social_channels_freq); i++) {
			if (FUNC18(
				    wpa_s, social_channels_freq[i]))
				params->freqs[num_channels++] =
					social_channels_freq[i];
		}
		params->freqs[num_channels++] = 0;
		break;
	case P2P_SCAN_FULL:
		break;
	case P2P_SCAN_SPECIFIC:
		params->freqs = FUNC1(2, sizeof(int));
		if (params->freqs == NULL)
			goto fail;
		params->freqs[0] = freq;
		params->freqs[1] = 0;
		break;
	case P2P_SCAN_SOCIAL_PLUS_ONE:
		params->freqs = FUNC1(FUNC0(social_channels_freq) + 2,
					  sizeof(int));
		if (params->freqs == NULL)
			goto fail;
		for (i = 0; i < FUNC0(social_channels_freq); i++) {
			if (FUNC18(
				    wpa_s, social_channels_freq[i]))
				params->freqs[num_channels++] =
					social_channels_freq[i];
		}
		if (FUNC7(wpa_s->global->p2p, freq))
			params->freqs[num_channels++] = freq;
		params->freqs[num_channels++] = 0;
		break;
	}

	ielen = FUNC6(wpa_s->global->p2p);
	ies = FUNC12(FUNC15(wps_ie) + ielen);
	if (ies == NULL) {
		FUNC13(wps_ie);
		goto fail;
	}
	FUNC16(ies, wps_ie);
	FUNC13(wps_ie);

	bands = FUNC17(wpa_s, params->freqs);
	FUNC5(wpa_s->global->p2p, ies, dev_id, bands);

	params->p2p_probe = 1;
	n = FUNC2(FUNC15(ies));
	if (n == NULL) {
		FUNC13(ies);
		goto fail;
	}
	FUNC3(n, FUNC14(ies), FUNC15(ies));
	params->extra_ies = n;
	params->extra_ies_len = FUNC15(ies);
	FUNC13(ies);

	FUNC9(wpa_s, "p2p-scan", 0);
	if (FUNC8(wpa_s, 0, "p2p-scan", 0, wpas_p2p_trigger_scan_cb,
			   params) < 0)
		goto fail;
	return 0;

fail:
	FUNC11(params);
	return -1;
}