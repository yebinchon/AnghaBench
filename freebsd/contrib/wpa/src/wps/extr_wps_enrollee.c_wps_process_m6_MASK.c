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
struct wps_parse_attr {int /*<<< orphan*/  r_snonce2; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/ * version2; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  enrollee_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M6 ; 
 scalar_t__ SEND_M7 ; 
 void* SEND_WSC_NACK ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  WPS_EV_AP_PIN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 struct wpabuf* FUNC3 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC5 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC6 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC10(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	struct wpabuf *decrypted;
	struct wps_parse_attr eattr;

	FUNC1(MSG_DEBUG, "WPS: Received M6");

	if (wps->state != RECV_M6) {
		FUNC1(MSG_DEBUG, "WPS: Unexpected state (%d) for "
			   "receiving M6", wps->state);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC6(wps, attr->enrollee_nonce) ||
	    FUNC5(wps, attr->authenticator, msg)) {
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	decrypted = FUNC3(wps, attr->encr_settings,
					      attr->encr_settings_len);
	if (decrypted == NULL) {
		FUNC1(MSG_DEBUG, "WPS: Failed to decrypted Encrypted "
			   "Settings attribute");
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC9(decrypted, attr->version2 != NULL) < 0) {
		FUNC2(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	FUNC1(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
		   "attribute");
	if (FUNC4(decrypted, &eattr) < 0 ||
	    FUNC7(wps, decrypted, eattr.key_wrap_auth) ||
	    FUNC8(wps, eattr.r_snonce2)) {
		FUNC2(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}
	FUNC2(decrypted);

	if (wps->wps->ap)
		wps->wps->event_cb(wps->wps->cb_ctx, WPS_EV_AP_PIN_SUCCESS,
				   NULL);

	wps->state = SEND_M7;
	return WPS_CONTINUE;
}