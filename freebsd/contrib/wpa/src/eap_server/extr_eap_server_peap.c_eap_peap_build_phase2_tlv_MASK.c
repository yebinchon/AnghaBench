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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int peap_version; scalar_t__ tlv_request; scalar_t__ crypto_binding; int recv_version; int crypto_binding_sent; int /*<<< orphan*/  ssl; int /*<<< orphan*/  const* cmk; int /*<<< orphan*/  binding_nonce; struct wpabuf* soh_response; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TLV_CRYPTO_BINDING_TLV ; 
 int EAP_TLV_RESULT_FAILURE ; 
 int EAP_TLV_RESULT_SUCCESS ; 
 int EAP_TLV_RESULT_TLV ; 
 int /*<<< orphan*/  const EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  EAP_TYPE_TLV ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ NO_BINDING ; 
 size_t SHA1_MAC_LEN ; 
 scalar_t__ TLV_REQ_SUCCESS ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_peap_data*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC10 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct eap_sm *sm,
						 struct eap_peap_data *data,
						 u8 id)
{
	struct wpabuf *buf, *encr_req;
	size_t mlen;

	mlen = 6; /* Result TLV */
	if (data->peap_version == 0 && data->tlv_request == TLV_REQ_SUCCESS &&
	    data->crypto_binding != NO_BINDING) {
		mlen += 60; /* Cryptobinding TLV */
#ifdef EAP_SERVER_TNC
		if (data->soh_response)
			mlen += wpabuf_len(data->soh_response);
#endif /* EAP_SERVER_TNC */
	}

	buf = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TLV, mlen,
			    EAP_CODE_REQUEST, id);
	if (buf == NULL)
		return NULL;

	FUNC14(buf, 0x80); /* Mandatory */
	FUNC14(buf, EAP_TLV_RESULT_TLV);
	/* Length */
	FUNC11(buf, 2);
	/* Status */
	FUNC11(buf, data->tlv_request == TLV_REQ_SUCCESS ?
			EAP_TLV_RESULT_SUCCESS : EAP_TLV_RESULT_FAILURE);

	if (data->peap_version == 0 && data->tlv_request == TLV_REQ_SUCCESS &&
	    data->crypto_binding != NO_BINDING) {
		u8 *mac;
		u8 eap_type = EAP_TYPE_PEAP;
		const u8 *addr[2];
		size_t len[2];
		u16 tlv_type;

#ifdef EAP_SERVER_TNC
		if (data->soh_response) {
			wpa_printf(MSG_DEBUG, "EAP-PEAP: Adding MS-SOH "
				   "Response TLV");
			wpabuf_put_buf(buf, data->soh_response);
			wpabuf_free(data->soh_response);
			data->soh_response = NULL;
		}
#endif /* EAP_SERVER_TNC */

		if (FUNC1(sm, data) < 0 ||
		    FUNC4(data->binding_nonce, 32)) {
			FUNC8(buf);
			return NULL;
		}

		/* Compound_MAC: HMAC-SHA1-160(cryptobinding TLV | EAP type) */
		addr[0] = FUNC10(buf, 0);
		len[0] = 60;
		addr[1] = &eap_type;
		len[1] = 1;

		tlv_type = EAP_TLV_CRYPTO_BINDING_TLV;
		FUNC11(buf, tlv_type);
		FUNC11(buf, 56);

		FUNC14(buf, 0); /* Reserved */
		FUNC14(buf, data->peap_version); /* Version */
		FUNC14(buf, data->recv_version); /* RecvVersion */
		FUNC14(buf, 0); /* SubType: 0 = Request, 1 = Response */
		FUNC13(buf, data->binding_nonce, 32); /* Nonce */
		mac = FUNC10(buf, 20); /* Compound_MAC */
		FUNC5(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC CMK",
			    data->cmk, 20);
		FUNC5(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 1",
			    addr[0], len[0]);
		FUNC5(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC data 2",
			    addr[1], len[1]);
		FUNC3(data->cmk, 20, 2, addr, len, mac);
		FUNC5(MSG_MSGDUMP, "EAP-PEAP: Compound_MAC",
			    mac, SHA1_MAC_LEN);
		data->crypto_binding_sent = 1;
	}

	FUNC6(MSG_DEBUG, "EAP-PEAP: Encrypting Phase 2 TLV data",
			    buf);

	encr_req = FUNC2(sm, &data->ssl, buf);
	FUNC8(buf);

	return encr_req;
}