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
struct wpabuf {int dummy; } ;
struct teap_tlv_request_action {int /*<<< orphan*/  action; int /*<<< orphan*/  status; void* length; void* tlv_type; } ;
struct teap_tlv_hdr {void* length; void* tlv_type; } ;
struct teap_attr_pac_type {void* pac_type; void* length; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int PAC_TYPE_PAC_TYPE ; 
 int PAC_TYPE_TUNNEL_PAC ; 
 int /*<<< orphan*/  TEAP_REQUEST_ACTION_PROCESS_TLV ; 
 int /*<<< orphan*/  TEAP_STATUS_SUCCESS ; 
 int TEAP_TLV_PAC ; 
 int TEAP_TLV_REQUEST_ACTION ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 void* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(void)
{
	struct wpabuf *req;
	struct teap_tlv_request_action *act;
	struct teap_tlv_hdr *pac;
	struct teap_attr_pac_type *type;

	req = FUNC2(sizeof(*act) + sizeof(*pac) + sizeof(*type));
	if (!req)
		return NULL;

	FUNC1(MSG_DEBUG, "EAP-TEAP: Add Request Action TLV (Process TLV)");
	act = FUNC3(req, sizeof(*act));
	act->tlv_type = FUNC0(TEAP_TLV_REQUEST_ACTION);
	act->length = FUNC0(2);
	act->status = TEAP_STATUS_SUCCESS;
	act->action = TEAP_REQUEST_ACTION_PROCESS_TLV;

	FUNC1(MSG_DEBUG, "EAP-TEAP: Add PAC TLV (PAC-Type = Tunnel)");
	pac = FUNC3(req, sizeof(*pac));
	pac->tlv_type = FUNC0(TEAP_TLV_PAC);
	pac->length = FUNC0(sizeof(*type));

	type = FUNC3(req, sizeof(*type));
	type->type = FUNC0(PAC_TYPE_PAC_TYPE);
	type->length = FUNC0(2);
	type->pac_type = FUNC0(PAC_TYPE_TUNNEL_PAC);

	return req;
}