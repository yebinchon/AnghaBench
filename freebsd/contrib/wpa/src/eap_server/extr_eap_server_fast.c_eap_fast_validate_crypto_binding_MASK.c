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
struct eap_tlv_crypto_binding_tlv {scalar_t__ version; scalar_t__ received_version; scalar_t__ subtype; int* nonce; int* compound_mac; } ;
struct eap_fast_data {int* crypto_binding_nonce; int /*<<< orphan*/  cmk; } ;
typedef  int /*<<< orphan*/  cmac ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_FAST_CMK_LEN ; 
 scalar_t__ EAP_FAST_VERSION ; 
 scalar_t__ EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t,int*) ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(
	struct eap_fast_data *data, struct eap_tlv_crypto_binding_tlv *b,
	size_t bind_len)
{
	u8 cmac[SHA1_MAC_LEN];

	FUNC5(MSG_DEBUG, "EAP-FAST: Reply Crypto-Binding TLV: "
		   "Version %d Received Version %d SubType %d",
		   b->version, b->received_version, b->subtype);
	FUNC4(MSG_MSGDUMP, "EAP-FAST: NONCE",
		    b->nonce, sizeof(b->nonce));
	FUNC4(MSG_MSGDUMP, "EAP-FAST: Compound MAC",
		    b->compound_mac, sizeof(b->compound_mac));

	if (b->version != EAP_FAST_VERSION ||
	    b->received_version != EAP_FAST_VERSION) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Unexpected version "
			   "in Crypto-Binding: version %d "
			   "received_version %d", b->version,
			   b->received_version);
		return -1;
	}

	if (b->subtype != EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Unexpected subtype in "
			   "Crypto-Binding: %d", b->subtype);
		return -1;
	}

	if (FUNC1(data->crypto_binding_nonce, b->nonce, 31) != 0 ||
	    (data->crypto_binding_nonce[31] | 1) != b->nonce[31]) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Invalid nonce in "
			   "Crypto-Binding");
		return -1;
	}

	FUNC2(cmac, b->compound_mac, sizeof(cmac));
	FUNC3(b->compound_mac, 0, sizeof(cmac));
	FUNC4(MSG_MSGDUMP, "EAP-FAST: Crypto-Binding TLV for "
		    "Compound MAC calculation",
		    (u8 *) b, bind_len);
	FUNC0(data->cmk, EAP_FAST_CMK_LEN, (u8 *) b, bind_len,
		  b->compound_mac);
	if (FUNC1(cmac, b->compound_mac, sizeof(cmac)) != 0) {
		FUNC4(MSG_MSGDUMP,
			    "EAP-FAST: Calculated Compound MAC",
			    b->compound_mac, sizeof(cmac));
		FUNC5(MSG_INFO, "EAP-FAST: Compound MAC did not "
			   "match");
		return -1;
	}

	return 0;
}