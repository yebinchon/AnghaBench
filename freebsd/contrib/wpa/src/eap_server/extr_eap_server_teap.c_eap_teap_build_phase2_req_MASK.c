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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct eap_teap_data {int /*<<< orphan*/  phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int eap_teap_auth; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TEAP_TLV_BASIC_PASSWORD_AUTH_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC5 (int) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm,
						 struct eap_teap_data *data,
						 u8 id)
{
	struct wpabuf *req;

	if (sm->eap_teap_auth == 1) {
		FUNC4(MSG_DEBUG, "EAP-TEAP: Initiate Basic-Password-Auth");
		req = FUNC5(sizeof(struct teap_tlv_hdr));
		if (!req)
			return NULL;
		FUNC0(req, TEAP_TLV_BASIC_PASSWORD_AUTH_REQ, 0);
		return req;
	}

	FUNC4(MSG_DEBUG, "EAP-TEAP: Initiate inner EAP method");
	if (!data->phase2_priv) {
		FUNC4(MSG_DEBUG,
			   "EAP-TEAP: Phase 2 method not initialized");
		return NULL;
	}

	req = data->phase2_method->buildReq(sm, data->phase2_priv, id);
	if (!req)
		return NULL;

	FUNC3(MSG_MSGDUMP, "EAP-TEAP: Phase 2 EAP-Request", req);
	return FUNC1(req);
}