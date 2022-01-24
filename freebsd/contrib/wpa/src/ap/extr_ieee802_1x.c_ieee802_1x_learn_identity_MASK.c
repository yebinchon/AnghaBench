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
typedef  scalar_t__ u8 ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {scalar_t__* identity; size_t identity_len; int /*<<< orphan*/  dot1xAuthEapolRespIdFramesRx; int /*<<< orphan*/  addr; int /*<<< orphan*/  eap; } ;
struct eap_hdr {scalar_t__ code; } ;

/* Variables and functions */
 scalar_t__ EAP_CODE_INITIATE ; 
 scalar_t__ EAP_CODE_RESPONSE ; 
 scalar_t__ const EAP_ERP_TYPE_REAUTH ; 
 scalar_t__ const EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE8021X ; 
 scalar_t__ FUNC0 (scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__ const*,size_t) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd,
				      struct eapol_state_machine *sm,
				      const u8 *eap, size_t len)
{
	const u8 *identity;
	size_t identity_len;
	const struct eap_hdr *hdr = (const struct eap_hdr *) eap;

	if (len <= sizeof(struct eap_hdr) ||
	    (hdr->code == EAP_CODE_RESPONSE &&
	     eap[sizeof(struct eap_hdr)] != EAP_TYPE_IDENTITY) ||
	    (hdr->code == EAP_CODE_INITIATE &&
	     eap[sizeof(struct eap_hdr)] != EAP_ERP_TYPE_REAUTH) ||
	    (hdr->code != EAP_CODE_RESPONSE &&
	     hdr->code != EAP_CODE_INITIATE))
		return;

	FUNC1(sm->eap, eap, len);
	identity = FUNC2(sm->eap, &identity_len);
	if (identity == NULL)
		return;

	/* Save station identity for future RADIUS packets */
	FUNC4(sm->identity);
	sm->identity = (u8 *) FUNC0(identity, identity_len);
	if (sm->identity == NULL) {
		sm->identity_len = 0;
		return;
	}

	sm->identity_len = identity_len;
	FUNC3(hapd, sm->addr, HOSTAPD_MODULE_IEEE8021X,
		       HOSTAPD_LEVEL_DEBUG, "STA identity '%s'", sm->identity);
	sm->dot1xAuthEapolRespIdFramesRx++;
}