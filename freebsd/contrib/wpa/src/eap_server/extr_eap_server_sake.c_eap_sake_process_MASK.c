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
struct eap_sake_hdr {int subtype; } ;
struct eap_sake_data {int dummy; } ;

/* Variables and functions */
#define  EAP_SAKE_SUBTYPE_AUTH_REJECT 131 
#define  EAP_SAKE_SUBTYPE_CHALLENGE 130 
#define  EAP_SAKE_SUBTYPE_CONFIRM 129 
#define  EAP_SAKE_SUBTYPE_IDENTITY 128 
 int /*<<< orphan*/  EAP_TYPE_SAKE ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const*,int) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_sake_data *data = priv;
	struct eap_sake_hdr *resp;
	u8 subtype;
	size_t len;
	const u8 *pos, *end;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_SAKE, respData, &len);
	if (pos == NULL || len < sizeof(struct eap_sake_hdr))
		return;

	resp = (struct eap_sake_hdr *) pos;
	end = pos + len;
	subtype = resp->subtype;
	pos = (u8 *) (resp + 1);

	FUNC5(MSG_DEBUG, "EAP-SAKE: Received attributes",
		    pos, end - pos);

	switch (subtype) {
	case EAP_SAKE_SUBTYPE_IDENTITY:
		FUNC4(sm, data, respData, pos, end - pos);
		break;
	case EAP_SAKE_SUBTYPE_CHALLENGE:
		FUNC2(sm, data, respData, pos, end - pos);
		break;
	case EAP_SAKE_SUBTYPE_CONFIRM:
		FUNC3(sm, data, respData, pos, end - pos);
		break;
	case EAP_SAKE_SUBTYPE_AUTH_REJECT:
		FUNC1(sm, data, respData, pos,
					     end - pos);
		break;
	}
}