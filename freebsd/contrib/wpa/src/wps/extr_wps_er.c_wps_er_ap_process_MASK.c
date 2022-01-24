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
struct wps_parse_attr {int* msg_type; } ;
struct wps_er_ap {int /*<<< orphan*/ * wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_CONTINUE ; 
 int WPS_DONE ; 
#define  WPS_WSC_ACK 130 
#define  WPS_WSC_DONE 129 
#define  WPS_WSC_NACK 128 
 int WSC_ACK ; 
 int WSC_Done ; 
 int WSC_MSG ; 
 int WSC_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_er_ap*,struct wpabuf*) ; 
 struct wpabuf* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (struct wpabuf*,struct wps_parse_attr*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct wpabuf*) ; 

__attribute__((used)) static void FUNC7(struct wps_er_ap *ap, struct wpabuf *msg)
{
	enum wps_process_res res;
	struct wps_parse_attr attr;
	enum wsc_op_code op_code;

	op_code = WSC_MSG;
	if (FUNC5(msg, &attr) == 0 && attr.msg_type) {
		switch (*attr.msg_type) {
		case WPS_WSC_ACK:
			op_code = WSC_ACK;
			break;
		case WPS_WSC_NACK:
			op_code = WSC_NACK;
			break;
		case WPS_WSC_DONE:
			op_code = WSC_Done;
			break;
		}
	}

	res = FUNC6(ap->wps, op_code, msg);
	if (res == WPS_CONTINUE) {
		struct wpabuf *next = FUNC4(ap->wps, &op_code);
		if (next) {
			FUNC3(ap, next);
			FUNC1(next);
		} else {
			FUNC0(MSG_DEBUG, "WPS ER: Failed to build "
				   "message");
			FUNC2(ap->wps);
			ap->wps = NULL;
		}
	} else if (res == WPS_DONE) {
		FUNC0(MSG_DEBUG, "WPS ER: Protocol run done");
		FUNC2(ap->wps);
		ap->wps = NULL;
	} else {
		FUNC0(MSG_DEBUG, "WPS ER: Failed to process message from "
			   "AP (res=%d)", res);
		FUNC2(ap->wps);
		ap->wps = NULL;
	}
}