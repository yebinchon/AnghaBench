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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int /*<<< orphan*/  bssid; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  assoc_freq; int /*<<< orphan*/  mbo_wnm_token; int /*<<< orphan*/  current_bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBO_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_ACTION_WNM ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WNM_NOTIFICATION_REQ ; 
 scalar_t__ WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct wpa_supplicant *wpa_s,
					   const u8 *data, size_t len)
{
	struct wpabuf *buf;
	int res;

	/*
	 * Send WNM-Notification Request frame only in case of a change in
	 * non-preferred channels list during association, if the AP supports
	 * MBO.
	 */
	if (wpa_s->wpa_state != WPA_COMPLETED || !wpa_s->current_bss ||
	    !FUNC0(wpa_s->current_bss, MBO_IE_VENDOR_TYPE))
		return;

	buf = FUNC3(4 + len);
	if (!buf)
		return;

	FUNC8(buf, WLAN_ACTION_WNM);
	FUNC8(buf, WNM_NOTIFICATION_REQ);
	wpa_s->mbo_wnm_token++;
	if (wpa_s->mbo_wnm_token == 0)
		wpa_s->mbo_wnm_token++;
	FUNC8(buf, wpa_s->mbo_wnm_token);
	FUNC8(buf, WLAN_EID_VENDOR_SPECIFIC); /* Type */

	FUNC7(buf, data, len);

	res = FUNC1(wpa_s, wpa_s->assoc_freq, 0, wpa_s->bssid,
				  wpa_s->own_addr, wpa_s->bssid,
				  FUNC5(buf), FUNC6(buf), 0);
	if (res < 0)
		FUNC2(MSG_DEBUG,
			   "Failed to send WNM-Notification Request frame with non-preferred channel list");

	FUNC4(buf);
}