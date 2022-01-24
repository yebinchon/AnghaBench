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
struct erp_tlvs {int /*<<< orphan*/  domain_len; scalar_t__ domain; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_eapTriggerStart ; 
 scalar_t__ const EAP_ERP_TYPE_REAUTH_START ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct eap_sm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__ const*,scalar_t__ const*,struct erp_tlvs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, const struct eap_hdr *hdr,
			      size_t len)
{
#ifdef CONFIG_ERP
	const u8 *pos = (const u8 *) (hdr + 1);
	const u8 *end = ((const u8 *) hdr) + len;
	struct erp_tlvs parse;

	if (len < sizeof(*hdr) + 1) {
		wpa_printf(MSG_DEBUG, "EAP: Ignored too short EAP-Initiate");
		return;
	}

	if (*pos != EAP_ERP_TYPE_REAUTH_START) {
		wpa_printf(MSG_DEBUG,
			   "EAP: Ignored unexpected EAP-Initiate Type=%u",
			   *pos);
		return;
	}

	pos++;
	if (pos >= end) {
		wpa_printf(MSG_DEBUG,
			   "EAP: Too short EAP-Initiate/Re-auth-Start");
		return;
	}
	pos++; /* Reserved */
	wpa_hexdump(MSG_DEBUG, "EAP: EAP-Initiate/Re-auth-Start TVs/TLVs",
		    pos, end - pos);

	if (erp_parse_tlvs(pos, end, &parse, 0) < 0)
		goto invalid;

	if (parse.domain) {
		wpa_hexdump_ascii(MSG_DEBUG,
				  "EAP: EAP-Initiate/Re-auth-Start - Domain name",
				  parse.domain, parse.domain_len);
		/* TODO: Derivation of domain specific keys for local ER */
	}

	if (eap_peer_erp_reauth_start(sm, hdr->identifier) == 0)
		return;

invalid:
#endif /* CONFIG_ERP */
	FUNC5(MSG_DEBUG,
		   "EAP: EAP-Initiate/Re-auth-Start - No suitable ERP keys available - try to start full EAP authentication");
	FUNC1(sm, EAPOL_eapTriggerStart, TRUE);
}