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
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  EapType ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_INITIATE ; 
 size_t EAP_ERP_TLV_DOMAIN_NAME ; 
 scalar_t__ EAP_ERP_TYPE_REAUTH_START ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 char* FUNC0 (struct eap_sm*) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm,
						       u8 id)
{
	const char *domain;
	size_t plen = 1;
	struct wpabuf *msg;
	size_t domain_len = 0;

	domain = FUNC0(sm);
	if (domain) {
		domain_len = FUNC2(domain);
		plen += 2 + domain_len;
	}

	msg = FUNC1(EAP_VENDOR_IETF,
			    (EapType) EAP_ERP_TYPE_REAUTH_START, plen,
			    EAP_CODE_INITIATE, id);
	if (msg == NULL)
		return NULL;
	FUNC4(msg, 0); /* Reserved */
	if (domain) {
		/* Domain name TLV */
		FUNC4(msg, EAP_ERP_TLV_DOMAIN_NAME);
		FUNC4(msg, domain_len);
		FUNC3(msg, domain, domain_len);
	}

	return msg;
}