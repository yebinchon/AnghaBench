#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_parse_attr {int /*<<< orphan*/  e_snonce1; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/ * version2; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  registrar_nonce; } ;
struct wps_data {scalar_t__ state; int /*<<< orphan*/  config_error; TYPE_2__* wps; scalar_t__ pbc; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_4__ {TYPE_1__* registrar; } ;
struct TYPE_3__ {scalar_t__ force_pbc_overlap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M5 ; 
 scalar_t__ SEND_M6 ; 
 void* SEND_WSC_NACK ; 
 int /*<<< orphan*/  WPS_CFG_MULTIPLE_PBC_DETECTED ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC4 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC5 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wps_data*) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC10(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	struct wpabuf *decrypted;
	struct wps_parse_attr eattr;

	FUNC0(MSG_DEBUG, "WPS: Received M5");

	if (wps->state != RECV_M5) {
		FUNC0(MSG_DEBUG, "WPS: Unexpected state (%d) for "
			   "receiving M5", wps->state);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
	    !FUNC8(wps)) {
		FUNC0(MSG_DEBUG, "WPS: Reject negotiation due to PBC "
			   "session overlap");
		wps->state = SEND_WSC_NACK;
		wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
		return WPS_CONTINUE;
	}

	if (FUNC7(wps, attr->registrar_nonce) ||
	    FUNC4(wps, attr->authenticator, msg)) {
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

	if (FUNC9(decrypted, attr->version2 != NULL) < 0) {
		FUNC1(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	FUNC0(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
		   "attribute");
	if (FUNC3(decrypted, &eattr) < 0 ||
	    FUNC6(wps, decrypted, eattr.key_wrap_auth) ||
	    FUNC5(wps, eattr.e_snonce1)) {
		FUNC1(decrypted);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}
	FUNC1(decrypted);

	wps->state = SEND_M6;
	return WPS_CONTINUE;
}