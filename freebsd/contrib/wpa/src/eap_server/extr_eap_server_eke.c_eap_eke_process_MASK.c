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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_eke_data {int dummy; } ;

/* Variables and functions */
#define  EAP_EKE_COMMIT 131 
#define  EAP_EKE_CONFIRM 130 
#define  EAP_EKE_FAILURE 129 
#define  EAP_EKE_ID 128 
 int /*<<< orphan*/  EAP_TYPE_EKE ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const*,int) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_eke_data *data = priv;
	u8 eke_exch;
	size_t len;
	const u8 *pos, *end;

	pos = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_EKE, respData, &len);
	if (pos == NULL || len < 1)
		return;

	eke_exch = *pos;
	end = pos + len;
	pos++;

	FUNC5(MSG_DEBUG, "EAP-EKE: Received payload", pos, end - pos);

	switch (eke_exch) {
	case EAP_EKE_ID:
		FUNC3(sm, data, respData, pos, end - pos);
		break;
	case EAP_EKE_COMMIT:
		FUNC0(sm, data, respData, pos, end - pos);
		break;
	case EAP_EKE_CONFIRM:
		FUNC1(sm, data, respData, pos, end - pos);
		break;
	case EAP_EKE_FAILURE:
		FUNC2(sm, data, respData, pos, end - pos);
		break;
	}
}