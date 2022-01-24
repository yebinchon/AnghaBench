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
struct wps_parse_attr {int /*<<< orphan*/ * version2; int /*<<< orphan*/  num_cred; int /*<<< orphan*/  cred_len; int /*<<< orphan*/  cred; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  enrollee_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; int /*<<< orphan*/  config_error; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int /*<<< orphan*/  ap; scalar_t__ ap_setup_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M8 ; 
 void* SEND_WSC_NACK ; 
 int /*<<< orphan*/  WPS_CFG_SETUP_LOCKED ; 
 int WPS_CONTINUE ; 
 scalar_t__ WPS_MSG_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wps_parse_attr*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC6 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC10(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	struct wpabuf *decrypted;
	struct wps_parse_attr eattr;

	FUNC0(MSG_DEBUG, "WPS: Received M8");

	if (wps->state != RECV_M8) {
		FUNC0(MSG_DEBUG, "WPS: Unexpected state (%d) for "
			   "receiving M8", wps->state);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC7(wps, attr->enrollee_nonce) ||
	    FUNC5(wps, attr->authenticator, msg)) {
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (wps->wps->ap && wps->wps->ap_setup_locked) {
		/*
		 * Stop here if special ap_setup_locked == 2 mode allowed the
		 * protocol to continue beyond M2. This allows ER to learn the
		 * current AP settings without changing them.
		 */
		FUNC0(MSG_DEBUG, "WPS: AP Setup is locked - refuse "
			   "registration of a new Registrar");
		wps->config_error = WPS_CFG_SETUP_LOCKED;
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	decrypted = FUNC2(wps, attr->encr_settings,
					      attr->encr_settings_len);
	if (decrypted == NULL) {
		FUNC0(MSG_DEBUG, "WPS: Failed to decrypted Encrypted "
			   "Settings attribute");
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (FUNC9(decrypted, wps->wps->ap,
				 attr->version2 != NULL) < 0) {
		FUNC1(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	FUNC0(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
		   "attribute");
	if (FUNC3(decrypted, &eattr) < 0 ||
	    FUNC8(wps, decrypted, eattr.key_wrap_auth) ||
	    FUNC6(wps, eattr.cred, eattr.cred_len,
			      eattr.num_cred, attr->version2 != NULL) ||
	    FUNC4(wps, &eattr, decrypted,
				      attr->version2 != NULL)) {
		FUNC1(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}
	FUNC1(decrypted);

	wps->state = WPS_MSG_DONE;
	return WPS_CONTINUE;
}