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
struct eap_method {int /*<<< orphan*/  getSessionId; int /*<<< orphan*/  isSuccess; int /*<<< orphan*/  get_emsk; int /*<<< orphan*/  getKey; int /*<<< orphan*/  isDone; int /*<<< orphan*/  process; int /*<<< orphan*/  check; int /*<<< orphan*/  buildReq; int /*<<< orphan*/  reset; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SERVER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 
 int /*<<< orphan*/  eap_teap_buildReq ; 
 int /*<<< orphan*/  eap_teap_check ; 
 int /*<<< orphan*/  eap_teap_getKey ; 
 int /*<<< orphan*/  eap_teap_get_emsk ; 
 int /*<<< orphan*/  eap_teap_get_session_id ; 
 int /*<<< orphan*/  eap_teap_init ; 
 int /*<<< orphan*/  eap_teap_isDone ; 
 int /*<<< orphan*/  eap_teap_isSuccess ; 
 int /*<<< orphan*/  eap_teap_process ; 
 int /*<<< orphan*/  eap_teap_reset ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_IETF, EAP_TYPE_TEAP, "TEAP");
	if (!eap)
		return -1;

	eap->init = eap_teap_init;
	eap->reset = eap_teap_reset;
	eap->buildReq = eap_teap_buildReq;
	eap->check = eap_teap_check;
	eap->process = eap_teap_process;
	eap->isDone = eap_teap_isDone;
	eap->getKey = eap_teap_getKey;
	eap->get_emsk = eap_teap_get_emsk;
	eap->isSuccess = eap_teap_isSuccess;
	eap->getSessionId = eap_teap_get_session_id;

	return FUNC1(eap);
}