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
typedef  int u32 ;
struct wpabuf {int dummy; } ;
struct eap_teap_data {scalar_t__ state; int /*<<< orphan*/  ssl; struct wpabuf* peer_outer_tlvs; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int EAP_TEAP_FLAGS_OUTER_TLV_LEN ; 
 int EAP_TLS_FLAGS_LENGTH_INCLUDED ; 
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ PHASE1 ; 
 int /*<<< orphan*/  PHASE1B ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC3 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*,struct eap_teap_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eap_teap_process_msg ; 
 int /*<<< orphan*/  eap_teap_process_version ; 
 int /*<<< orphan*/  FUNC4 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC7 (int) ; 
 struct wpabuf* FUNC8 (int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int* FUNC10 (struct wpabuf*) ; 
 int FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC16(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_teap_data *data = priv;
	const u8 *pos;
	size_t len;
	struct wpabuf *resp = respData;
	u8 flags;

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_TEAP, respData, &len);
	if (!pos || len < 1)
		return;

	flags = *pos++;
	len--;

	if (flags & EAP_TEAP_FLAGS_OUTER_TLV_LEN) {
		/* Extract Outer TLVs from the message before common TLS
		 * processing */
		u32 message_len = 0, outer_tlv_len;
		const u8 *hdr;

		if (data->state != PHASE1) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Unexpected Outer TLVs in a message that is not the first message from the peer");
			return;
		}

		if (flags & EAP_TLS_FLAGS_LENGTH_INCLUDED) {
			if (len < 4) {
				FUNC6(MSG_INFO,
					   "EAP-TEAP: Too short message to include Message Length field");
				return;
			}

			message_len = FUNC1(pos);
			pos += 4;
			len -= 4;
			if (message_len < 4) {
				FUNC6(MSG_INFO,
					   "EAP-TEAP: Message Length field has too msall value to include Outer TLV Length field");
				return;
			}
		}

		if (len < 4) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Too short message to include Outer TLVs Length field");
			return;
		}

		outer_tlv_len = FUNC1(pos);
		pos += 4;
		len -= 4;

		FUNC6(MSG_DEBUG,
			   "EAP-TEAP: Message Length %u Outer TLV Length %u",
			  message_len, outer_tlv_len);
		if (len < outer_tlv_len) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Too short message to include Outer TLVs field");
			return;
		}

		if (message_len &&
		    (message_len < outer_tlv_len ||
		     message_len < 4 + outer_tlv_len)) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Message Length field has too small value to include Outer TLVs");
			return;
		}

		if (FUNC11(respData) < 4 + outer_tlv_len ||
		    len < outer_tlv_len)
			return;
		resp = FUNC7(FUNC11(respData) - 4 - outer_tlv_len);
		if (!resp)
			return;
		hdr = FUNC10(respData);
		FUNC15(resp, *hdr++); /* Code */
		FUNC15(resp, *hdr++); /* Identifier */
		FUNC12(resp, FUNC0(hdr) - 4 - outer_tlv_len);
		hdr += 2;
		FUNC15(resp, *hdr++); /* Type */
		/* Flags | Ver */
		FUNC15(resp, flags & ~EAP_TEAP_FLAGS_OUTER_TLV_LEN);

		if (flags & EAP_TLS_FLAGS_LENGTH_INCLUDED)
			FUNC13(resp, message_len - 4 - outer_tlv_len);

		FUNC14(resp, pos, len - outer_tlv_len);
		pos += len - outer_tlv_len;
		FUNC9(data->peer_outer_tlvs);
		data->peer_outer_tlvs = FUNC8(pos, outer_tlv_len);
		if (!data->peer_outer_tlvs)
			return;
		FUNC5(MSG_DEBUG, "EAP-TEAP: Outer TLVs",
				data->peer_outer_tlvs);

		FUNC5(MSG_DEBUG,
				"EAP-TEAP: TLS Data message after Outer TLV removal",
				resp);
		pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_TEAP, resp,
				       &len);
		if (!pos || len < 1) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Invalid frame after Outer TLV removal");
			return;
		}
	}

	if (data->state == PHASE1)
		FUNC4(data, PHASE1B);

	if (FUNC3(sm, &data->ssl, resp, data,
				   EAP_TYPE_TEAP, eap_teap_process_version,
				   eap_teap_process_msg) < 0)
		FUNC4(data, FAILURE);

	if (resp != respData)
		FUNC9(resp);
}