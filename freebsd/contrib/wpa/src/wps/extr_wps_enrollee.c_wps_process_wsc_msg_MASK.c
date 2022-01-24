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
struct wps_parse_attr {int* msg_type; int /*<<< orphan*/ * enrollee_nonce; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct wps_data {int /*<<< orphan*/  last_msg; TYPE_1__ peer_dev; int /*<<< orphan*/  error_indication; int /*<<< orphan*/  config_error; int /*<<< orphan*/  wps; int /*<<< orphan*/  state; int /*<<< orphan*/  nonce_e; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SEND_WSC_NACK ; 
 int WPS_CONTINUE ; 
 int WPS_FAILURE ; 
#define  WPS_M2 132 
#define  WPS_M2D 131 
#define  WPS_M4 130 
#define  WPS_M6 129 
#define  WPS_M8 128 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC6 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC7 (struct wps_data*,struct wps_parse_attr*) ; 
 int FUNC8 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC9 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC10 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf const*) ; 

__attribute__((used)) static enum wps_process_res FUNC16(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr attr;
	enum wps_process_res ret = WPS_CONTINUE;

	FUNC1(MSG_DEBUG, "WPS: Received WSC_MSG");

	if (FUNC5(msg, &attr) < 0)
		return WPS_FAILURE;

	if (attr.enrollee_nonce == NULL ||
	    FUNC0(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC1(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
		return WPS_FAILURE;
	}

	if (attr.msg_type == NULL) {
		FUNC1(MSG_DEBUG, "WPS: No Message Type attribute");
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	switch (*attr.msg_type) {
	case WPS_M2:
		if (FUNC11(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC6(wps, msg, &attr);
		break;
	case WPS_M2D:
		if (FUNC12(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC7(wps, &attr);
		break;
	case WPS_M4:
		if (FUNC13(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC8(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC4(wps->wps, WPS_M4, wps->config_error,
				       wps->error_indication,
				       wps->peer_dev.mac_addr);
		break;
	case WPS_M6:
		if (FUNC14(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC9(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC4(wps->wps, WPS_M6, wps->config_error,
				       wps->error_indication,
				       wps->peer_dev.mac_addr);
		break;
	case WPS_M8:
		if (FUNC15(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC10(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC4(wps->wps, WPS_M8, wps->config_error,
				       wps->error_indication,
				       wps->peer_dev.mac_addr);
		break;
	default:
		FUNC1(MSG_DEBUG, "WPS: Unsupported Message Type %d",
			   *attr.msg_type);
		return WPS_FAILURE;
	}

	/*
	 * Save a copy of the last message for Authenticator derivation if we
	 * are continuing. However, skip M2D since it is not authenticated and
	 * neither is the ACK/NACK response frame. This allows the possibly
	 * following M2 to be processed correctly by using the previously sent
	 * M1 in Authenticator derivation.
	 */
	if (ret == WPS_CONTINUE && *attr.msg_type != WPS_M2D) {
		/* Save a copy of the last message for Authenticator derivation
		 */
		FUNC3(wps->last_msg);
		wps->last_msg = FUNC2(msg);
	}

	return ret;
}