#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ tls_v13; } ;
struct eap_tls_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 size_t EAP_EMSK_LEN ; 
 int EAP_TLS_KEY_LEN ; 
 int /*<<< orphan*/  const EAP_TYPE_TLS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,TYPE_1__*,char const*,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC6(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_tls_data *data = priv;
	u8 *eapKeyData, *emsk;
	const char *label;
	const u8 eap_tls13_context[] = { EAP_TYPE_TLS };
	const u8 *context = NULL;
	size_t context_len = 0;

	if (data->state != SUCCESS)
		return NULL;

	if (data->ssl.tls_v13) {
		label = "EXPORTER_EAP_TLS_Key_Material";
		context = eap_tls13_context;
		context_len = 1;
	} else {
		label = "client EAP encryption";
	}
	eapKeyData = FUNC1(sm, &data->ssl, label,
					       context, context_len,
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
		FUNC4(MSG_DEBUG, "EAP-TLS: Derived EMSK",
			    emsk, EAP_EMSK_LEN);
	} else {
		FUNC5(MSG_DEBUG, "EAP-TLS: Failed to derive EMSK");
	}

	return emsk;
}