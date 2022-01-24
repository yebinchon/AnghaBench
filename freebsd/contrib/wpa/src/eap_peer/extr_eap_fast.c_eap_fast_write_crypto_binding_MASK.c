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
struct eap_tlv_hdr {int dummy; } ;
struct eap_tlv_crypto_binding_tlv {int /*<<< orphan*/  compound_mac; int /*<<< orphan*/  nonce; int /*<<< orphan*/  subtype; int /*<<< orphan*/  received_version; int /*<<< orphan*/  version; void* length; void* tlv_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_FAST_CMK_LEN ; 
 int /*<<< orphan*/  EAP_FAST_VERSION ; 
 int /*<<< orphan*/  EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE ; 
 int EAP_TLV_CRYPTO_BINDING_TLV ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
	struct eap_tlv_crypto_binding_tlv *rbind,
	struct eap_tlv_crypto_binding_tlv *_bind, const u8 *cmk)
{
	rbind->tlv_type = FUNC1(EAP_TLV_TYPE_MANDATORY |
				       EAP_TLV_CRYPTO_BINDING_TLV);
	rbind->length = FUNC1(sizeof(*rbind) -
				     sizeof(struct eap_tlv_hdr));
	rbind->version = EAP_FAST_VERSION;
	rbind->received_version = _bind->version;
	rbind->subtype = EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE;
	FUNC3(rbind->nonce, _bind->nonce, sizeof(_bind->nonce));
	FUNC2(rbind->nonce, sizeof(rbind->nonce));
	FUNC0(cmk, EAP_FAST_CMK_LEN, (u8 *) rbind, sizeof(*rbind),
		  rbind->compound_mac);

	FUNC5(MSG_DEBUG, "EAP-FAST: Reply Crypto-Binding TLV: Version %d "
		   "Received Version %d SubType %d",
		   rbind->version, rbind->received_version, rbind->subtype);
	FUNC4(MSG_MSGDUMP, "EAP-FAST: NONCE",
		    rbind->nonce, sizeof(rbind->nonce));
	FUNC4(MSG_MSGDUMP, "EAP-FAST: Compound MAC",
		    rbind->compound_mac, sizeof(rbind->compound_mac));
}