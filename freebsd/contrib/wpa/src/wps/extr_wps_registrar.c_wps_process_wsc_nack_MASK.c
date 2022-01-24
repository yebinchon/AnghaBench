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
typedef  scalar_t__ u16 ;
struct wps_parse_attr {scalar_t__* msg_type; int /*<<< orphan*/ * config_error; int /*<<< orphan*/ * enrollee_nonce; int /*<<< orphan*/ * registrar_nonce; } ;
struct wps_data {int state; int /*<<< orphan*/  mac_addr_e; int /*<<< orphan*/  error_indication; TYPE_1__* wps; int /*<<< orphan*/  nonce_e; int /*<<< orphan*/  nonce_r; scalar_t__ ext_reg; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ wps_upnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  RECV_DONE 131 
#define  RECV_M3 130 
#define  RECV_M5 129 
#define  RECV_M7 128 
 int SEND_WSC_NACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int WPS_FAILURE ; 
 int /*<<< orphan*/  WPS_M2 ; 
 int /*<<< orphan*/  WPS_M4 ; 
 int /*<<< orphan*/  WPS_M6 ; 
 int /*<<< orphan*/  WPS_M8 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ WPS_WSC_NACK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wpabuf const*,struct wps_parse_attr*) ; 

__attribute__((used)) static enum wps_process_res FUNC5(struct wps_data *wps,
						 const struct wpabuf *msg)
{
	struct wps_parse_attr attr;
	int old_state;
	u16 config_error;

	FUNC2(MSG_DEBUG, "WPS: Received WSC_NACK");

	old_state = wps->state;
	wps->state = SEND_WSC_NACK;

	if (FUNC4(msg, &attr) < 0)
		return WPS_FAILURE;

	if (attr.msg_type == NULL) {
		FUNC2(MSG_DEBUG, "WPS: No Message Type attribute");
		return WPS_FAILURE;
	}

	if (*attr.msg_type != WPS_WSC_NACK) {
		FUNC2(MSG_DEBUG, "WPS: Invalid Message Type %d",
			   *attr.msg_type);
		return WPS_FAILURE;
	}

#ifdef CONFIG_WPS_UPNP
	if (wps->wps->wps_upnp && wps->ext_reg) {
		wpa_printf(MSG_DEBUG, "WPS: Negotiation using external "
			   "Registrar terminated by the Enrollee");
		return WPS_FAILURE;
	}
#endif /* CONFIG_WPS_UPNP */

	if (attr.registrar_nonce == NULL ||
	    FUNC1(wps->nonce_r, attr.registrar_nonce, WPS_NONCE_LEN) != 0)
	{
		FUNC2(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
		return WPS_FAILURE;
	}

	if (attr.enrollee_nonce == NULL ||
	    FUNC1(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC2(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
		return WPS_FAILURE;
	}

	if (attr.config_error == NULL) {
		FUNC2(MSG_DEBUG, "WPS: No Configuration Error attribute "
			   "in WSC_NACK");
		return WPS_FAILURE;
	}

	config_error = FUNC0(attr.config_error);
	FUNC2(MSG_DEBUG, "WPS: Enrollee terminated negotiation with "
		   "Configuration Error %d", config_error);

	switch (old_state) {
	case RECV_M3:
		FUNC3(wps->wps, WPS_M2, config_error,
			       wps->error_indication, wps->mac_addr_e);
		break;
	case RECV_M5:
		FUNC3(wps->wps, WPS_M4, config_error,
			       wps->error_indication, wps->mac_addr_e);
		break;
	case RECV_M7:
		FUNC3(wps->wps, WPS_M6, config_error,
			       wps->error_indication, wps->mac_addr_e);
		break;
	case RECV_DONE:
		FUNC3(wps->wps, WPS_M8, config_error,
			       wps->error_indication, wps->mac_addr_e);
		break;
	default:
		break;
	}

	return WPS_FAILURE;
}