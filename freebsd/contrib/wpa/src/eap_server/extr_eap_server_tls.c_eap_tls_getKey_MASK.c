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
 scalar_t__ EAP_EMSK_LEN ; 
 size_t EAP_TLS_KEY_LEN ; 
 int /*<<< orphan*/  const EAP_TYPE_TLS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,TYPE_1__*,char const*,int /*<<< orphan*/  const*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC4(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_tls_data *data = priv;
	u8 *eapKeyData;
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
	eapKeyData = FUNC0(sm, &data->ssl, label,
					       context, context_len,
					       EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
	if (eapKeyData) {
		*len = EAP_TLS_KEY_LEN;
		FUNC2(MSG_DEBUG, "EAP-TLS: Derived key",
			    eapKeyData, EAP_TLS_KEY_LEN);
		FUNC1(eapKeyData + EAP_TLS_KEY_LEN, 0, EAP_EMSK_LEN);
	} else {
		FUNC3(MSG_DEBUG, "EAP-TLS: Failed to derive key");
	}

	return eapKeyData;
}