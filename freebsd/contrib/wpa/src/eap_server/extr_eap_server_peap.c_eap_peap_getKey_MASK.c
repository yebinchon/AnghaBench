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
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ state; int /*<<< orphan*/  ssl; int /*<<< orphan*/  ipmk; int /*<<< orphan*/  peap_version; scalar_t__ crypto_binding_used; } ;
typedef  int /*<<< orphan*/  csk ;

/* Variables and functions */
 scalar_t__ EAP_EMSK_LEN ; 
 size_t EAP_TLS_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC9(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_peap_data *data = priv;
	u8 *eapKeyData;

	if (data->state != SUCCESS)
		return NULL;

	if (data->crypto_binding_used) {
		u8 csk[128];
		/*
		 * Note: It looks like Microsoft implementation requires null
		 * termination for this label while the one used for deriving
		 * IPMK|CMK did not use null termination.
		 */
		if (FUNC5(data->peap_version, data->ipmk, 40,
				 "Session Key Generating Function",
				 (u8 *) "\00", 1, csk, sizeof(csk)) < 0)
			return NULL;
		FUNC7(MSG_DEBUG, "EAP-PEAP: CSK", csk, sizeof(csk));
		eapKeyData = FUNC2(EAP_TLS_KEY_LEN);
		if (eapKeyData) {
			FUNC3(eapKeyData, csk, EAP_TLS_KEY_LEN);
			*len = EAP_TLS_KEY_LEN;
			FUNC6(MSG_DEBUG, "EAP-PEAP: Derived key",
				    eapKeyData, EAP_TLS_KEY_LEN);
		} else {
			FUNC8(MSG_DEBUG, "EAP-PEAP: Failed to derive "
				   "key");
		}

		FUNC1(csk, sizeof(csk));

		return eapKeyData;
	}

	/* TODO: PEAPv1 - different label in some cases */
	eapKeyData = FUNC0(sm, &data->ssl,
					       "client EAP encryption", NULL, 0,
					       EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
	if (eapKeyData) {
		FUNC4(eapKeyData + EAP_TLS_KEY_LEN, 0, EAP_EMSK_LEN);
		*len = EAP_TLS_KEY_LEN;
		FUNC6(MSG_DEBUG, "EAP-PEAP: Derived key",
			    eapKeyData, EAP_TLS_KEY_LEN);
	} else {
		FUNC8(MSG_DEBUG, "EAP-PEAP: Failed to derive key");
	}

	return eapKeyData;
}