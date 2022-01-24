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
struct wps_data {int ext_reg; int state; int /*<<< orphan*/  last_msg; TYPE_1__* wps; int /*<<< orphan*/  int_reg; } ;
struct wpabuf {int dummy; } ;
struct upnp_pending_message {int type; struct wpabuf* msg; struct upnp_pending_message* next; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
struct TYPE_2__ {struct upnp_pending_message* upnp_msgs; scalar_t__ wps_upnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  RECV_DONE 136 
#define  SEND_M2 135 
#define  SEND_M2D 134 
#define  SEND_M4 133 
#define  SEND_M6 132 
#define  SEND_M8 131 
#define  SEND_WSC_NACK 130 
#define  WPS_WSC_ACK 129 
#define  WPS_WSC_NACK 128 
 int WSC_ACK ; 
 int WSC_MSG ; 
 int WSC_NACK ; 
 int /*<<< orphan*/  FUNC0 (struct upnp_pending_message*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (struct wps_data*) ; 
 struct wpabuf* FUNC5 (struct wps_data*) ; 
 struct wpabuf* FUNC6 (struct wps_data*) ; 
 struct wpabuf* FUNC7 (struct wps_data*) ; 
 struct wpabuf* FUNC8 (struct wps_data*) ; 
 struct wpabuf* FUNC9 (struct wps_data*) ; 
 struct wpabuf* FUNC10 (struct wps_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct wps_data*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

struct wpabuf * FUNC13(struct wps_data *wps,
				      enum wsc_op_code *op_code)
{
	struct wpabuf *msg;

#ifdef CONFIG_WPS_UPNP
	if (!wps->int_reg && wps->wps->wps_upnp) {
		struct upnp_pending_message *p, *prev = NULL;
		if (wps->ext_reg > 1)
			wps_registrar_free_pending_m2(wps->wps);
		p = wps->wps->upnp_msgs;
		/* TODO: check pending message MAC address */
		while (p && p->next) {
			prev = p;
			p = p->next;
		}
		if (p) {
			wpa_printf(MSG_DEBUG, "WPS: Use pending message from "
				   "UPnP");
			if (prev)
				prev->next = NULL;
			else
				wps->wps->upnp_msgs = NULL;
			msg = p->msg;
			switch (p->type) {
			case WPS_WSC_ACK:
				*op_code = WSC_ACK;
				break;
			case WPS_WSC_NACK:
				*op_code = WSC_NACK;
				break;
			default:
				*op_code = WSC_MSG;
				break;
			}
			os_free(p);
			if (wps->ext_reg == 0)
				wps->ext_reg = 1;
			return msg;
		}
	}
	if (wps->ext_reg) {
		wpa_printf(MSG_DEBUG, "WPS: Using external Registrar, but no "
			   "pending message available");
		return NULL;
	}
#endif /* CONFIG_WPS_UPNP */

	switch (wps->state) {
	case SEND_M2:
		if (FUNC11(wps) < 0)
			msg = FUNC5(wps);
		else
			msg = FUNC4(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M2D:
		msg = FUNC5(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M4:
		msg = FUNC6(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M6:
		msg = FUNC7(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M8:
		msg = FUNC8(wps);
		*op_code = WSC_MSG;
		break;
	case RECV_DONE:
		msg = FUNC9(wps);
		*op_code = WSC_ACK;
		break;
	case SEND_WSC_NACK:
		msg = FUNC10(wps);
		*op_code = WSC_NACK;
		break;
	default:
		FUNC1(MSG_DEBUG, "WPS: Unsupported state %d for building "
			   "a message", wps->state);
		msg = NULL;
		break;
	}

	if (*op_code == WSC_MSG && msg) {
		/* Save a copy of the last message for Authenticator derivation
		 */
		FUNC3(wps->last_msg);
		wps->last_msg = FUNC2(msg);
	}

	return msg;
}