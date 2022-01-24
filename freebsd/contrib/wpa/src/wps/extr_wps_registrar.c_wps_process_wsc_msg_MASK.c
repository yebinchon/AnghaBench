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
struct wps_parse_attr {int* msg_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/ * registrar_nonce; } ;
struct wps_data {int /*<<< orphan*/  last_msg; int /*<<< orphan*/  mac_addr_e; int /*<<< orphan*/  error_indication; int /*<<< orphan*/  config_error; TYPE_1__* wps; int /*<<< orphan*/  state; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int /*<<< orphan*/  wps_upnp; int /*<<< orphan*/ * upnp_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SEND_WSC_NACK ; 
 int /*<<< orphan*/  UPNP_WPS_WLANEVENT_TYPE_EAP ; 
 int WPS_CONTINUE ; 
 int WPS_FAILURE ; 
#define  WPS_M1 131 
#define  WPS_M3 130 
#define  WPS_M5 129 
#define  WPS_M7 128 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC8 (struct wps_data*,struct wps_parse_attr*) ; 
 int FUNC9 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC10 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC11 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf const*) ; 

__attribute__((used)) static enum wps_process_res FUNC16(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr attr;
	enum wps_process_res ret = WPS_CONTINUE;

	FUNC2(MSG_DEBUG, "WPS: Received WSC_MSG");

	if (FUNC7(msg, &attr) < 0)
		return WPS_FAILURE;

	if (attr.msg_type == NULL) {
		FUNC2(MSG_DEBUG, "WPS: No Message Type attribute");
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (*attr.msg_type != WPS_M1 &&
	    (attr.registrar_nonce == NULL ||
	     FUNC0(wps->nonce_r, attr.registrar_nonce,
		       WPS_NONCE_LEN) != 0)) {
		FUNC2(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
		return WPS_FAILURE;
	}

	switch (*attr.msg_type) {
	case WPS_M1:
		if (FUNC12(msg) < 0)
			return WPS_FAILURE;
#ifdef CONFIG_WPS_UPNP
		if (wps->wps->wps_upnp && attr.mac_addr) {
			/* Remove old pending messages when starting new run */
			wps_free_pending_msgs(wps->wps->upnp_msgs);
			wps->wps->upnp_msgs = NULL;

			upnp_wps_device_send_wlan_event(
				wps->wps->wps_upnp, attr.mac_addr,
				UPNP_WPS_WLANEVENT_TYPE_EAP, msg);
		}
#endif /* CONFIG_WPS_UPNP */
		ret = FUNC8(wps, &attr);
		break;
	case WPS_M3:
		if (FUNC13(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC9(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC5(wps->wps, WPS_M3, wps->config_error,
				       wps->error_indication, wps->mac_addr_e);
		break;
	case WPS_M5:
		if (FUNC14(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC10(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC5(wps->wps, WPS_M5, wps->config_error,
				       wps->error_indication, wps->mac_addr_e);
		break;
	case WPS_M7:
		if (FUNC15(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC11(wps, msg, &attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC5(wps->wps, WPS_M7, wps->config_error,
				       wps->error_indication, wps->mac_addr_e);
		break;
	default:
		FUNC2(MSG_DEBUG, "WPS: Unsupported Message Type %d",
			   *attr.msg_type);
		return WPS_FAILURE;
	}

	if (ret == WPS_CONTINUE) {
		/* Save a copy of the last message for Authenticator derivation
		 */
		FUNC4(wps->last_msg);
		wps->last_msg = FUNC3(msg);
	}

	return ret;
}