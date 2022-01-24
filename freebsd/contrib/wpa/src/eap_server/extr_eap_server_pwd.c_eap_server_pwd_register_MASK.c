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
 int /*<<< orphan*/  EAP_TYPE_PWD ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  eap_pwd_build_req ; 
 int /*<<< orphan*/  eap_pwd_check ; 
 int /*<<< orphan*/  eap_pwd_get_emsk ; 
 int /*<<< orphan*/  eap_pwd_get_session_id ; 
 int /*<<< orphan*/  eap_pwd_getkey ; 
 int /*<<< orphan*/  eap_pwd_init ; 
 int /*<<< orphan*/  eap_pwd_is_done ; 
 int /*<<< orphan*/  eap_pwd_is_success ; 
 int /*<<< orphan*/  eap_pwd_process ; 
 int /*<<< orphan*/  eap_pwd_reset ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_IETF, EAP_TYPE_PWD,
				      "PWD");
	if (eap == NULL)
		return -1;

	eap->init = eap_pwd_init;
	eap->reset = eap_pwd_reset;
	eap->buildReq = eap_pwd_build_req;
	eap->check = eap_pwd_check;
	eap->process = eap_pwd_process;
	eap->isDone = eap_pwd_is_done;
	eap->getKey = eap_pwd_getkey;
	eap->get_emsk = eap_pwd_get_emsk;
	eap->isSuccess = eap_pwd_is_success;
	eap->getSessionId = eap_pwd_get_session_id;

	return FUNC1(eap);
}