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
struct teap_tlv_hdr {int dummy; } ;
struct teap_tlv_crypto_binding {int subtype; int /*<<< orphan*/  msk_compound_mac; int /*<<< orphan*/  emsk_compound_mac; int /*<<< orphan*/  nonce; int /*<<< orphan*/  received_version; int /*<<< orphan*/  version; void* length; void* tlv_type; } ;
struct eap_teap_data {int /*<<< orphan*/  peer_outer_tlvs; int /*<<< orphan*/  server_outer_tlvs; int /*<<< orphan*/  tls_cs; int /*<<< orphan*/  received_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_COMPOUND_MAC_LEN ; 
 int /*<<< orphan*/  EAP_TEAP_VERSION ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC ; 
 int TEAP_CRYPTO_BINDING_MSK_CMAC ; 
 int TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE ; 
 int TEAP_TLV_CRYPTO_BINDING ; 
 int TEAP_TLV_MANDATORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct teap_tlv_crypto_binding*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(
	struct eap_teap_data *data,
	struct teap_tlv_crypto_binding *rbind,
	const struct teap_tlv_crypto_binding *cb,
	const u8 *cmk_msk, const u8 *cmk_emsk)
{
	u8 subtype, flags;

	rbind->tlv_type = FUNC1(TEAP_TLV_MANDATORY |
				       TEAP_TLV_CRYPTO_BINDING);
	rbind->length = FUNC1(sizeof(*rbind) -
				     sizeof(struct teap_tlv_hdr));
	rbind->version = EAP_TEAP_VERSION;
	rbind->received_version = data->received_version;
	/* FIX: RFC 7170 is not clear on which Flags value to use when
	 * Crypto-Binding TLV is used with Basic-Password-Auth */
	flags = cmk_emsk ? TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC :
		TEAP_CRYPTO_BINDING_MSK_CMAC;
	subtype = TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE;
	rbind->subtype = (flags << 4) | subtype;
	FUNC3(rbind->nonce, cb->nonce, sizeof(cb->nonce));
	FUNC2(rbind->nonce, sizeof(rbind->nonce));
	FUNC4(rbind->emsk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);
	FUNC4(rbind->msk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);

	if (FUNC0(data->tls_cs, rbind, data->server_outer_tlvs,
				  data->peer_outer_tlvs, cmk_msk,
				  rbind->msk_compound_mac) < 0)
		return -1;
	if (cmk_emsk &&
	    FUNC0(data->tls_cs, rbind, data->server_outer_tlvs,
				  data->peer_outer_tlvs, cmk_emsk,
				  rbind->emsk_compound_mac) < 0)
		return -1;

	FUNC6(MSG_DEBUG,
		   "EAP-TEAP: Reply Crypto-Binding TLV: Version %u Received Version %u Flags %u SubType %u",
		   rbind->version, rbind->received_version, flags, subtype);
	FUNC5(MSG_MSGDUMP, "EAP-TEAP: Nonce",
		    rbind->nonce, sizeof(rbind->nonce));
	FUNC5(MSG_MSGDUMP, "EAP-TEAP: EMSK Compound MAC",
		    rbind->emsk_compound_mac, sizeof(rbind->emsk_compound_mac));
	FUNC5(MSG_MSGDUMP, "EAP-TEAP: MSK Compound MAC",
		    rbind->msk_compound_mac, sizeof(rbind->msk_compound_mac));

	return 0;
}