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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_hdr {scalar_t__ op_code; } ;
struct eap_mschapv2_data {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 scalar_t__ CHALLENGE ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAILURE_REQ ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MSCHAPV2_OP_FAILURE ; 
 scalar_t__ MSCHAPV2_OP_RESPONSE ; 
 scalar_t__ MSCHAPV2_OP_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ SUCCESS_REQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static Boolean FUNC2(struct eap_sm *sm, void *priv,
				  struct wpabuf *respData)
{
	struct eap_mschapv2_data *data = priv;
	struct eap_mschapv2_hdr *resp;
	const u8 *pos;
	size_t len;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, respData,
			       &len);
	if (pos == NULL || len < 1) {
		FUNC1(MSG_INFO, "EAP-MSCHAPV2: Invalid frame");
		return TRUE;
	}

	resp = (struct eap_mschapv2_hdr *) pos;
	if (data->state == CHALLENGE &&
	    resp->op_code != MSCHAPV2_OP_RESPONSE) {
		FUNC1(MSG_DEBUG, "EAP-MSCHAPV2: Expected Response - "
			   "ignore op %d", resp->op_code);
		return TRUE;
	}

	if (data->state == SUCCESS_REQ &&
	    resp->op_code != MSCHAPV2_OP_SUCCESS &&
	    resp->op_code != MSCHAPV2_OP_FAILURE) {
		FUNC1(MSG_DEBUG, "EAP-MSCHAPV2: Expected Success or "
			   "Failure - ignore op %d", resp->op_code);
		return TRUE;
	}

	if (data->state == FAILURE_REQ &&
	    resp->op_code != MSCHAPV2_OP_FAILURE) {
		FUNC1(MSG_DEBUG, "EAP-MSCHAPV2: Expected Failure "
			   "- ignore op %d", resp->op_code);
		return TRUE;
	}

	return FALSE;
}