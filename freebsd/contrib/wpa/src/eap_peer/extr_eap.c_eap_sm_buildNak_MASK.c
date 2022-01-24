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
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ reqMethod; int /*<<< orphan*/  reqVendorMethod; int /*<<< orphan*/  reqVendor; } ;
struct eap_method {scalar_t__ vendor; scalar_t__ method; struct eap_method* next; } ;
struct eap_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 scalar_t__ EAP_TYPE_EXPANDED ; 
 int /*<<< orphan*/  EAP_TYPE_NAK ; 
 scalar_t__ EAP_TYPE_NONE ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sm*,scalar_t__,scalar_t__) ; 
 struct wpabuf* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct eap_method* FUNC2 (size_t*) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,int,struct eap_method const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_sm *sm, int id)
{
	struct wpabuf *resp;
	u8 *start;
	int found = 0, expanded_found = 0;
	size_t count;
	const struct eap_method *methods, *m;

	FUNC6(MSG_DEBUG, "EAP: Building EAP-Nak (requested type %u "
		   "vendor=%u method=%u not allowed)", sm->reqMethod,
		   sm->reqVendor, sm->reqVendorMethod);
	methods = FUNC2(&count);
	if (methods == NULL)
		return NULL;
	if (sm->reqMethod == EAP_TYPE_EXPANDED)
		return FUNC3(sm, id, methods, count);

	/* RFC 3748 - 5.3.1: Legacy Nak */
	resp = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_NAK,
			     sizeof(struct eap_hdr) + 1 + count + 1,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;

	start = FUNC7(resp, 0);
	for (m = methods; m; m = m->next) {
		if (m->vendor == EAP_VENDOR_IETF && m->method == sm->reqMethod)
			continue; /* do not allow the current method again */
		if (FUNC0(sm, m->vendor, m->method)) {
			if (m->vendor != EAP_VENDOR_IETF) {
				if (expanded_found)
					continue;
				expanded_found = 1;
				FUNC8(resp, EAP_TYPE_EXPANDED);
			} else
				FUNC8(resp, m->method);
			found++;
		}
	}
	if (!found)
		FUNC8(resp, EAP_TYPE_NONE);
	FUNC5(MSG_DEBUG, "EAP: allowed methods", start, found);

	FUNC4(resp);

	return resp;
}