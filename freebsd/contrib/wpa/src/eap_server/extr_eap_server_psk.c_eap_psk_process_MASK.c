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
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_psk_data {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/ * password; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_psk_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_psk_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_psk_data *data = priv;
	const u8 *pos;
	size_t len;

	if (sm->user == NULL || sm->user->password == NULL) {
		FUNC4(MSG_INFO, "EAP-PSK: Plaintext password not "
			   "configured");
		data->state = FAILURE;
		return;
	}

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData, &len);
	if (pos == NULL || len < 1)
		return;

	switch (FUNC0(*pos)) {
	case 1:
		FUNC2(sm, data, respData);
		break;
	case 3:
		FUNC3(sm, data, respData);
		break;
	}
}