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
struct wps_context {int /*<<< orphan*/ * ap_nfc_dev_pw; int /*<<< orphan*/ * ap_nfc_dh_privkey; int /*<<< orphan*/ * ap_nfc_dh_pubkey; scalar_t__ ap_nfc_dev_pw_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct wps_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct wps_context *wps)
{
#ifdef CONFIG_WPS_NFC
	wpa_printf(MSG_DEBUG, "WPS: Clear NFC Tag context %p", wps);
	wps->ap_nfc_dev_pw_id = 0;
	wpabuf_free(wps->ap_nfc_dh_pubkey);
	wps->ap_nfc_dh_pubkey = NULL;
	wpabuf_free(wps->ap_nfc_dh_privkey);
	wps->ap_nfc_dh_privkey = NULL;
	wpabuf_free(wps->ap_nfc_dev_pw);
	wps->ap_nfc_dev_pw = NULL;
#endif /* CONFIG_WPS_NFC */
}