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
struct eap_ttls_data {scalar_t__ state; int /*<<< orphan*/  ssl; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 size_t EAP_EMSK_LEN ; 
 int EAP_TLS_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC6(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_ttls_data *data = priv;
	u8 *eapKeyData, *emsk;

	if (data->state != SUCCESS)
		return NULL;

	eapKeyData = FUNC1(sm, &data->ssl,
					       "ttls keying material", NULL, 0,
					       EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
	if (eapKeyData) {
		emsk = FUNC2(EAP_EMSK_LEN);
		if (emsk)
			FUNC3(emsk, eapKeyData + EAP_TLS_KEY_LEN,
				  EAP_EMSK_LEN);
		FUNC0(eapKeyData, EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
	} else
		emsk = NULL;

	if (emsk) {
		*len = EAP_EMSK_LEN;
		FUNC4(MSG_DEBUG, "EAP-TTLS: Derived EMSK",
			    emsk, EAP_EMSK_LEN);
	} else {
		FUNC5(MSG_DEBUG, "EAP-TTLS: Failed to derive EMSK");
	}

	return emsk;
}