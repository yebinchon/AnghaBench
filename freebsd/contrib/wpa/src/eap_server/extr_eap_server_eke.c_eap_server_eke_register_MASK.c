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
struct eap_method {int /*<<< orphan*/  getSessionId; int /*<<< orphan*/  get_emsk; int /*<<< orphan*/  isSuccess; int /*<<< orphan*/  getKey; int /*<<< orphan*/  isDone; int /*<<< orphan*/  process; int /*<<< orphan*/  check; int /*<<< orphan*/  buildReq; int /*<<< orphan*/  reset; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SERVER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_EKE ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  eap_eke_buildReq ; 
 int /*<<< orphan*/  eap_eke_check ; 
 int /*<<< orphan*/  eap_eke_getKey ; 
 int /*<<< orphan*/  eap_eke_get_emsk ; 
 int /*<<< orphan*/  eap_eke_get_session_id ; 
 int /*<<< orphan*/  eap_eke_init ; 
 int /*<<< orphan*/  eap_eke_isDone ; 
 int /*<<< orphan*/  eap_eke_isSuccess ; 
 int /*<<< orphan*/  eap_eke_process ; 
 int /*<<< orphan*/  eap_eke_reset ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_IETF, EAP_TYPE_EKE, "EKE");
	if (eap == NULL)
		return -1;

	eap->init = eap_eke_init;
	eap->reset = eap_eke_reset;
	eap->buildReq = eap_eke_buildReq;
	eap->check = eap_eke_check;
	eap->process = eap_eke_process;
	eap->isDone = eap_eke_isDone;
	eap->getKey = eap_eke_getKey;
	eap->isSuccess = eap_eke_isSuccess;
	eap->get_emsk = eap_eke_get_emsk;
	eap->getSessionId = eap_eke_get_session_id;

	return FUNC1(eap);
}