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
typedef  int u8 ;
typedef  int u16 ;
struct wpa_sm {TYPE_1__* ctx; int /*<<< orphan*/  group_cipher; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int /*<<< orphan*/  gtk; int /*<<< orphan*/  tx; int /*<<< orphan*/  alg; int /*<<< orphan*/  key_rsc_len; } ;
struct wpa_eapol_ie_parse {int const* gtk; int gtk_len; int /*<<< orphan*/  oci_len; int /*<<< orphan*/  oci; } ;
struct wpa_channel_info {int /*<<< orphan*/  seg1_idx; int /*<<< orphan*/  chanwidth; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int WPA_KEY_INFO_ENCR_KEY_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wpa_sm*,struct wpa_eapol_ie_parse*) ; 
 int /*<<< orphan*/  ocv_errorstr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_channel_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (struct wpa_sm*,struct wpa_channel_info*) ; 
 scalar_t__ FUNC8 (struct wpa_sm*) ; 
 scalar_t__ FUNC9 (struct wpa_sm*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_sm*,int) ; 
 scalar_t__ FUNC11 (int const*,size_t,struct wpa_eapol_ie_parse*) ; 

__attribute__((used)) static int FUNC12(struct wpa_sm *sm,
					     const u8 *keydata,
					     size_t keydatalen,
					     u16 key_info,
					     struct wpa_gtk_data *gd)
{
	int maxkeylen;
	struct wpa_eapol_ie_parse ie;

	FUNC5(MSG_DEBUG, "RSN: msg 1/2 key data",
			keydata, keydatalen);
	if (FUNC11(keydata, keydatalen, &ie) < 0)
		return -1;
	if (ie.gtk && !(key_info & WPA_KEY_INFO_ENCR_KEY_DATA)) {
		FUNC6(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: GTK IE in unencrypted key data");
		return -1;
	}
	if (ie.gtk == NULL) {
		FUNC6(sm->ctx->msg_ctx, MSG_INFO,
			"WPA: No GTK IE in Group Key msg 1/2");
		return -1;
	}
	maxkeylen = gd->gtk_len = ie.gtk_len - 2;

#ifdef CONFIG_OCV
	if (wpa_sm_ocv_enabled(sm)) {
		struct wpa_channel_info ci;

		if (wpa_sm_channel_info(sm, &ci) != 0) {
			wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
				"Failed to get channel info to validate received OCI in EAPOL-Key group msg 1/2");
			return -1;
		}

		if (ocv_verify_tx_params(ie.oci, ie.oci_len, &ci,
					 channel_width_to_int(ci.chanwidth),
					 ci.seg1_idx) != 0) {
			wpa_msg(sm->ctx->msg_ctx, MSG_WARNING, "%s",
				ocv_errorstr);
			return -1;
		}
	}
#endif /* CONFIG_OCV */

	if (FUNC9(sm, sm->group_cipher,
					      gd->gtk_len, maxkeylen,
					      &gd->key_rsc_len, &gd->alg))
		return -1;

	FUNC5(MSG_DEBUG, "RSN: received GTK in group key handshake",
			ie.gtk, ie.gtk_len);
	gd->keyidx = ie.gtk[0] & 0x3;
	gd->tx = FUNC10(sm,
						      !!(ie.gtk[0] & FUNC0(2)));
	if (ie.gtk_len - 2 > sizeof(gd->gtk)) {
		FUNC6(sm->ctx->msg_ctx, MSG_INFO,
			"RSN: Too long GTK in GTK IE (len=%lu)",
			(unsigned long) ie.gtk_len - 2);
		return -1;
	}
	FUNC4(gd->gtk, ie.gtk + 2, ie.gtk_len - 2);

	if (FUNC2(sm, &ie) < 0)
		FUNC6(sm->ctx->msg_ctx, MSG_INFO,
			"RSN: Failed to configure IGTK");

	return 0;
}