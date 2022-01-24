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
struct wps_parse_attr {scalar_t__* msg_type; int /*<<< orphan*/ * enrollee_nonce; int /*<<< orphan*/ * registrar_nonce; } ;
struct TYPE_3__ {int /*<<< orphan*/  mac_addr; } ;
struct wps_data {scalar_t__ state; TYPE_1__ peer_dev; TYPE_2__* wps; int /*<<< orphan*/  nonce_e; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_4__ {scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_ACK ; 
 int WPS_DONE ; 
 int WPS_FAILURE ; 
 scalar_t__ WPS_FINISHED ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ WPS_WSC_ACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC4(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr attr;

	FUNC1(MSG_DEBUG, "WPS: Received WSC_ACK");

	if (FUNC2(msg, &attr) < 0)
		return WPS_FAILURE;

	if (attr.msg_type == NULL) {
		FUNC1(MSG_DEBUG, "WPS: No Message Type attribute");
		return WPS_FAILURE;
	}

	if (*attr.msg_type != WPS_WSC_ACK) {
		FUNC1(MSG_DEBUG, "WPS: Invalid Message Type %d",
			   *attr.msg_type);
		return WPS_FAILURE;
	}

	if (attr.registrar_nonce == NULL ||
	    FUNC0(wps->nonce_r, attr.registrar_nonce, WPS_NONCE_LEN) != 0)
	{
		FUNC1(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
		return WPS_FAILURE;
	}

	if (attr.enrollee_nonce == NULL ||
	    FUNC0(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC1(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
		return WPS_FAILURE;
	}

	if (wps->state == RECV_ACK && wps->wps->ap) {
		FUNC1(MSG_DEBUG, "WPS: External Registrar registration "
			   "completed successfully");
		FUNC3(wps->wps, wps->peer_dev.mac_addr);
		wps->state = WPS_FINISHED;
		return WPS_DONE;
	}

	return WPS_FAILURE;
}