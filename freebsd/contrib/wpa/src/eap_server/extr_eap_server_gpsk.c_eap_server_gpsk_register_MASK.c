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
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  eap_gpsk_buildReq ; 
 int /*<<< orphan*/  eap_gpsk_check ; 
 int /*<<< orphan*/  eap_gpsk_getKey ; 
 int /*<<< orphan*/  eap_gpsk_get_emsk ; 
 int /*<<< orphan*/  eap_gpsk_get_session_id ; 
 int /*<<< orphan*/  eap_gpsk_init ; 
 int /*<<< orphan*/  eap_gpsk_isDone ; 
 int /*<<< orphan*/  eap_gpsk_isSuccess ; 
 int /*<<< orphan*/  eap_gpsk_process ; 
 int /*<<< orphan*/  eap_gpsk_reset ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_IETF, EAP_TYPE_GPSK, "GPSK");
	if (eap == NULL)
		return -1;

	eap->init = eap_gpsk_init;
	eap->reset = eap_gpsk_reset;
	eap->buildReq = eap_gpsk_buildReq;
	eap->check = eap_gpsk_check;
	eap->process = eap_gpsk_process;
	eap->isDone = eap_gpsk_isDone;
	eap->getKey = eap_gpsk_getKey;
	eap->isSuccess = eap_gpsk_isSuccess;
	eap->get_emsk = eap_gpsk_get_emsk;
	eap->getSessionId = eap_gpsk_get_session_id;

	return FUNC1(eap);
}