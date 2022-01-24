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
struct eap_mschapv2_data {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ MSCHAPV2_OP_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct eap_sm *sm,
					      struct eap_mschapv2_data *data,
					      struct wpabuf *respData)
{
	struct eap_mschapv2_hdr *resp;
	const u8 *pos;
	size_t len;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, respData,
			       &len);
	if (pos == NULL || len < 1)
		return; /* Should not happen - frame already validated */

	resp = (struct eap_mschapv2_hdr *) pos;

	if (resp->op_code == MSCHAPV2_OP_SUCCESS) {
		FUNC1(MSG_DEBUG, "EAP-MSCHAPV2: Received Success Response"
			   " - authentication completed successfully");
		data->state = SUCCESS;
	} else {
		FUNC1(MSG_DEBUG, "EAP-MSCHAPV2: Did not receive Success "
			   "Response - peer rejected authentication");
		data->state = FAILURE;
	}
}