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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct teap_tlv_crypto_binding {int /*<<< orphan*/  msk_compound_mac; int /*<<< orphan*/  emsk_compound_mac; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_CMK_LEN ; 
 int /*<<< orphan*/  EAP_TEAP_COMPOUND_MAC_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct teap_tlv_crypto_binding const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct teap_tlv_crypto_binding const* FUNC8 (struct wpabuf const*) ; 
 size_t FUNC9 (struct wpabuf const*) ; 

int FUNC10(u16 tls_cs, const struct teap_tlv_crypto_binding *cb,
			  const struct wpabuf *server_outer_tlvs,
			  const struct wpabuf *peer_outer_tlvs,
			  const u8 *cmk, u8 *compound_mac)
{
	u8 *pos, *buffer;
	size_t bind_len, buffer_len;
	struct teap_tlv_crypto_binding *tmp_cb;
	int res;

	/* RFC 7170, Section 5.3 */
	bind_len = sizeof(struct teap_tlv_hdr) + FUNC0(cb->length);
	buffer_len = bind_len + 1;
	if (server_outer_tlvs)
		buffer_len += FUNC9(server_outer_tlvs);
	if (peer_outer_tlvs)
		buffer_len += FUNC9(peer_outer_tlvs);
	buffer = FUNC3(buffer_len);
	if (!buffer)
		return -1;

	pos = buffer;
	/* 1. The entire Crypto-Binding TLV attribute with both the EMSK and MSK
	 * Compound MAC fields zeroed out. */
	FUNC4(pos, cb, bind_len);
	pos += bind_len;
	tmp_cb = (struct teap_tlv_crypto_binding *) buffer;
	FUNC5(tmp_cb->emsk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);
	FUNC5(tmp_cb->msk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);

	/* 2. The EAP Type sent by the other party in the first TEAP message. */
	/* This is supposed to be the EAP Type sent by the other party in the
	 * first TEAP message, but since we cannot get here without having
	 * successfully negotiated use of TEAP, this can only be the fixed EAP
	 * Type of TEAP. */
	*pos++ = EAP_TYPE_TEAP;

	/* 3. All the Outer TLVs from the first TEAP message sent by EAP server
	 * to peer. */
	if (server_outer_tlvs) {
		FUNC4(pos, FUNC8(server_outer_tlvs),
			  FUNC9(server_outer_tlvs));
		pos += FUNC9(server_outer_tlvs);
	}

	/* 4. All the Outer TLVs from the first TEAP message sent by the peer to
	 * the EAP server. */
	if (peer_outer_tlvs) {
		FUNC4(pos, FUNC8(peer_outer_tlvs),
			  FUNC9(peer_outer_tlvs));
		pos += FUNC9(peer_outer_tlvs);
	}

	buffer_len = pos - buffer;

	FUNC7(MSG_MSGDUMP,
			"EAP-TEAP: CMK for Compound MAC calculation",
			cmk, EAP_TEAP_CMK_LEN);
	FUNC6(MSG_MSGDUMP,
		    "EAP-TEAP: BUFFER for Compound MAC calculation",
		    buffer, buffer_len);
	res = FUNC1(tls_cs, cmk, EAP_TEAP_CMK_LEN,
			       buffer, buffer_len,
			       compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
	FUNC2(buffer);

	return res;
}