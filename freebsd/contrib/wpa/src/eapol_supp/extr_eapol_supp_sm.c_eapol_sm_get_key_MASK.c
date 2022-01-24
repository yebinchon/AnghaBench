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
typedef  int /*<<< orphan*/  u8 ;
struct eapol_sm {int /*<<< orphan*/  eap; int /*<<< orphan*/  eap_proxy; scalar_t__ use_eap_proxy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct eapol_sm *sm, u8 *key, size_t len)
{
	const u8 *eap_key;
	size_t eap_len;

#ifdef CONFIG_EAP_PROXY
	if (sm && sm->use_eap_proxy) {
		/* Get key from EAP proxy */
		if (sm == NULL || !eap_proxy_key_available(sm->eap_proxy)) {
			wpa_printf(MSG_DEBUG, "EAPOL: EAP key not available");
			return -1;
		}
		eap_key = eap_proxy_get_eapKeyData(sm->eap_proxy, &eap_len);
		if (eap_key == NULL) {
			wpa_printf(MSG_DEBUG, "EAPOL: Failed to get "
				   "eapKeyData");
			return -1;
		}
		goto key_fetched;
	}
#endif /* CONFIG_EAP_PROXY */
	if (sm == NULL || !FUNC1(sm->eap)) {
		FUNC5(MSG_DEBUG, "EAPOL: EAP key not available");
		return -1;
	}
	eap_key = FUNC0(sm->eap, &eap_len);
	if (eap_key == NULL) {
		FUNC5(MSG_DEBUG, "EAPOL: Failed to get eapKeyData");
		return -1;
	}
#ifdef CONFIG_EAP_PROXY
key_fetched:
#endif /* CONFIG_EAP_PROXY */
	if (len > eap_len) {
		FUNC5(MSG_DEBUG, "EAPOL: Requested key length (%lu) not "
			   "available (len=%lu)",
			   (unsigned long) len, (unsigned long) eap_len);
		return eap_len;
	}
	FUNC4(key, eap_key, len);
	FUNC5(MSG_DEBUG, "EAPOL: Successfully fetched key (len=%lu)",
		   (unsigned long) len);
	return 0;
}