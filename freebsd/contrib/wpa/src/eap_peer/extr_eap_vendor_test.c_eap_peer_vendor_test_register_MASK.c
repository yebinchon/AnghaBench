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
struct eap_method {int /*<<< orphan*/  getKey; int /*<<< orphan*/  isKeyAvailable; int /*<<< orphan*/  process; int /*<<< orphan*/  deinit; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_PEER_METHOD_INTERFACE_VERSION ; 
 int /*<<< orphan*/  EAP_VENDOR_ID ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE ; 
 struct eap_method* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct eap_method*) ; 
 int /*<<< orphan*/  eap_vendor_test_deinit ; 
 int /*<<< orphan*/  eap_vendor_test_getKey ; 
 int /*<<< orphan*/  eap_vendor_test_init ; 
 int /*<<< orphan*/  eap_vendor_test_isKeyAvailable ; 
 int /*<<< orphan*/  eap_vendor_test_process ; 

int FUNC2(void)
{
	struct eap_method *eap;

	eap = FUNC0(EAP_PEER_METHOD_INTERFACE_VERSION,
				    EAP_VENDOR_ID, EAP_VENDOR_TYPE,
				    "VENDOR-TEST");
	if (eap == NULL)
		return -1;

	eap->init = eap_vendor_test_init;
	eap->deinit = eap_vendor_test_deinit;
	eap->process = eap_vendor_test_process;
	eap->isKeyAvailable = eap_vendor_test_isKeyAvailable;
	eap->getKey = eap_vendor_test_getKey;

	return FUNC1(eap);
}