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
struct wps_parse_attr {scalar_t__* msg_type; } ;
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_FAILURE ; 
 scalar_t__ WPS_WSC_ACK ; 
 scalar_t__ WPS_WSC_NACK ; 
#define  WSC_ACK 131 
#define  WSC_MSG 130 
#define  WSC_NACK 129 
#define  WSC_UPnP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC1 (struct wpabuf const*) ; 
 scalar_t__ FUNC2 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC3 (struct wps_data*,struct wpabuf const*) ; 
 int FUNC4 (struct wps_data*,struct wpabuf const*) ; 
 int FUNC5 (struct wps_data*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*) ; 

enum wps_process_res FUNC8(struct wps_data *wps,
					      enum wsc_op_code op_code,
					      const struct wpabuf *msg)
{

	FUNC0(MSG_DEBUG, "WPS: Processing received message (len=%lu "
		   "op_code=%d)",
		   (unsigned long) FUNC1(msg), op_code);

	if (op_code == WSC_UPnP) {
		/* Determine the OpCode based on message type attribute */
		struct wps_parse_attr attr;
		if (FUNC2(msg, &attr) == 0 && attr.msg_type) {
			if (*attr.msg_type == WPS_WSC_ACK)
				op_code = WSC_ACK;
			else if (*attr.msg_type == WPS_WSC_NACK)
				op_code = WSC_NACK;
		}
	}

	switch (op_code) {
	case WSC_MSG:
	case WSC_UPnP:
		return FUNC4(wps, msg);
	case WSC_ACK:
		if (FUNC6(msg) < 0)
			return WPS_FAILURE;
		return FUNC3(wps, msg);
	case WSC_NACK:
		if (FUNC7(msg) < 0)
			return WPS_FAILURE;
		return FUNC5(wps, msg);
	default:
		FUNC0(MSG_DEBUG, "WPS: Unsupported op_code %d", op_code);
		return WPS_FAILURE;
	}
}