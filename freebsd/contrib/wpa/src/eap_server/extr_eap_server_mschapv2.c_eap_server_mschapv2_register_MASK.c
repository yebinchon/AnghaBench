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
struct eap_method {int /*<<< orphan*/  isSuccess; int /*<<< orphan*/  getKey; int /*<<< orphan*/  isDone; int /*<<< orphan*/  process; int /*<<< orphan*/  check; int /*<<< orphan*/  buildReq; int /*<<< orphan*/  reset; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SERVER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  eap_mschapv2_buildReq ; 
 int /*<<< orphan*/  eap_mschapv2_check ; 
 int /*<<< orphan*/  eap_mschapv2_getKey ; 
 int /*<<< orphan*/  eap_mschapv2_init ; 
 int /*<<< orphan*/  eap_mschapv2_isDone ; 
 int /*<<< orphan*/  eap_mschapv2_isSuccess ; 
 int /*<<< orphan*/  eap_mschapv2_process ; 
 int /*<<< orphan*/  eap_mschapv2_reset ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2,
				      "MSCHAPV2");
	if (eap == NULL)
		return -1;

	eap->init = eap_mschapv2_init;
	eap->reset = eap_mschapv2_reset;
	eap->buildReq = eap_mschapv2_buildReq;
	eap->check = eap_mschapv2_check;
	eap->process = eap_mschapv2_process;
	eap->isDone = eap_mschapv2_isDone;
	eap->getKey = eap_mschapv2_getKey;
	eap->isSuccess = eap_mschapv2_isSuccess;

	return FUNC1(eap);
}