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
struct eap_method {int /*<<< orphan*/  getTimeout; int /*<<< orphan*/  isSuccess; int /*<<< orphan*/  isDone; int /*<<< orphan*/  process; int /*<<< orphan*/  check; int /*<<< orphan*/  buildReq; int /*<<< orphan*/  reset; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SERVER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 
 int /*<<< orphan*/  eap_wsc_buildReq ; 
 int /*<<< orphan*/  eap_wsc_check ; 
 int /*<<< orphan*/  eap_wsc_getTimeout ; 
 int /*<<< orphan*/  eap_wsc_init ; 
 int /*<<< orphan*/  eap_wsc_isDone ; 
 int /*<<< orphan*/  eap_wsc_isSuccess ; 
 int /*<<< orphan*/  eap_wsc_process ; 
 int /*<<< orphan*/  eap_wsc_reset ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_SERVER_METHOD_INTERFACE_VERSION,
				      EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC,
				      "WSC");
	if (eap == NULL)
		return -1;

	eap->init = eap_wsc_init;
	eap->reset = eap_wsc_reset;
	eap->buildReq = eap_wsc_buildReq;
	eap->check = eap_wsc_check;
	eap->process = eap_wsc_process;
	eap->isDone = eap_wsc_isDone;
	eap->isSuccess = eap_wsc_isSuccess;
	eap->getTimeout = eap_wsc_getTimeout;

	return FUNC1(eap);
}