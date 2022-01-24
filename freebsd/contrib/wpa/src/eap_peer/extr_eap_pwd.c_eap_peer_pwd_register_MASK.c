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
struct eap_method {int /*<<< orphan*/  get_emsk; int /*<<< orphan*/  getSessionId; int /*<<< orphan*/  getKey; int /*<<< orphan*/  isKeyAvailable; int /*<<< orphan*/  process; int /*<<< orphan*/  deinit; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_PEER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_PWD ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 
 int /*<<< orphan*/  eap_pwd_deinit ; 
 int /*<<< orphan*/  eap_pwd_get_emsk ; 
 int /*<<< orphan*/  eap_pwd_get_session_id ; 
 int /*<<< orphan*/  eap_pwd_getkey ; 
 int /*<<< orphan*/  eap_pwd_init ; 
 int /*<<< orphan*/  eap_pwd_key_available ; 
 int /*<<< orphan*/  eap_pwd_process ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_PEER_METHOD_INTERFACE_VERSION,
				    EAP_VENDOR_IETF, EAP_TYPE_PWD, "PWD");
	if (eap == NULL)
		return -1;

	eap->init = eap_pwd_init;
	eap->deinit = eap_pwd_deinit;
	eap->process = eap_pwd_process;
	eap->isKeyAvailable = eap_pwd_key_available;
	eap->getKey = eap_pwd_getkey;
	eap->getSessionId = eap_pwd_get_session_id;
	eap->get_emsk = eap_pwd_get_emsk;

	return FUNC1(eap);
}