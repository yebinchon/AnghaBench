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
struct eap_peap_data {int /*<<< orphan*/ * key_data; int /*<<< orphan*/  ipmk; int /*<<< orphan*/  peap_version; scalar_t__ crypto_binding_used; int /*<<< orphan*/  phase2_success; } ;
typedef  int /*<<< orphan*/  csk ;

/* Variables and functions */
 size_t EAP_TLS_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u8 * FUNC7(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_peap_data *data = priv;
	u8 *key;

	if (data->key_data == NULL || !data->phase2_success)
		return NULL;

	key = FUNC2(EAP_TLS_KEY_LEN);
	if (key == NULL)
		return NULL;

	*len = EAP_TLS_KEY_LEN;

	if (data->crypto_binding_used) {
		u8 csk[128];
		/*
		 * Note: It looks like Microsoft implementation requires null
		 * termination for this label while the one used for deriving
		 * IPMK|CMK did not use null termination.
		 */
		if (FUNC4(data->peap_version, data->ipmk, 40,
				 "Session Key Generating Function",
				 (u8 *) "\00", 1, csk, sizeof(csk)) < 0) {
			FUNC1(key);
			return NULL;
		}
		FUNC6(MSG_DEBUG, "EAP-PEAP: CSK", csk, sizeof(csk));
		FUNC3(key, csk, EAP_TLS_KEY_LEN);
		FUNC5(MSG_DEBUG, "EAP-PEAP: Derived key",
			    key, EAP_TLS_KEY_LEN);
		FUNC0(csk, sizeof(csk));
	} else
		FUNC3(key, data->key_data, EAP_TLS_KEY_LEN);

	return key;
}