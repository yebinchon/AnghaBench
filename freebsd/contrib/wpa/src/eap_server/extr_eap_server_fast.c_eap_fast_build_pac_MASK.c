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
struct pac_tlv_hdr {void* len; void* type; } ;
struct os_time {scalar_t__ sec; } ;
struct eap_tlv_result_tlv {int /*<<< orphan*/  status; int /*<<< orphan*/  length; int /*<<< orphan*/  tlv_type; } ;
struct eap_tlv_hdr {void* length; void* tlv_type; } ;
struct eap_sm {int identity_len; int /*<<< orphan*/ * identity; } ;
struct eap_fast_data {int srv_id_len; int /*<<< orphan*/ * srv_id_info; int /*<<< orphan*/ * srv_id; scalar_t__ pac_key_lifetime; int /*<<< orphan*/  pac_opaque_encr; } ;

/* Variables and functions */
 int EAP_FAST_PAC_KEY_LEN ; 
 int EAP_TLV_PAC_TLV ; 
 int EAP_TLV_RESULT_SUCCESS ; 
 int EAP_TLV_RESULT_TLV ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PAC_OPAQUE_TYPE_IDENTITY ; 
 int /*<<< orphan*/  PAC_OPAQUE_TYPE_KEY ; 
 int /*<<< orphan*/  PAC_OPAQUE_TYPE_LIFETIME ; 
 int /*<<< orphan*/  PAC_OPAQUE_TYPE_PAD ; 
 int /*<<< orphan*/  PAC_TYPE_A_ID ; 
 int /*<<< orphan*/  PAC_TYPE_A_ID_INFO ; 
 int /*<<< orphan*/  PAC_TYPE_CRED_LIFETIME ; 
 int /*<<< orphan*/  PAC_TYPE_I_ID ; 
 int PAC_TYPE_PAC_INFO ; 
 int /*<<< orphan*/  PAC_TYPE_PAC_KEY ; 
 int /*<<< orphan*/  PAC_TYPE_PAC_OPAQUE ; 
 int /*<<< orphan*/  PAC_TYPE_PAC_TYPE ; 
 int /*<<< orphan*/  PAC_TYPE_TUNNEL_PAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct os_time*) ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC15 (size_t) ; 
 void* FUNC16 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC19(struct eap_sm *sm,
					  struct eap_fast_data *data)
{
	u8 pac_key[EAP_FAST_PAC_KEY_LEN];
	u8 *pac_buf, *pac_opaque;
	struct wpabuf *buf;
	u8 *pos;
	size_t buf_len, srv_id_info_len, pac_len;
	struct eap_tlv_hdr *pac_tlv;
	struct pac_tlv_hdr *pac_info;
	struct eap_tlv_result_tlv *result;
	struct os_time now;

	if (FUNC11(pac_key, EAP_FAST_PAC_KEY_LEN) < 0 ||
	    FUNC7(&now) < 0)
		return NULL;
	FUNC13(MSG_DEBUG, "EAP-FAST: Generated PAC-Key",
			pac_key, EAP_FAST_PAC_KEY_LEN);

	pac_len = (2 + EAP_FAST_PAC_KEY_LEN) + (2 + 4) +
		(2 + sm->identity_len) + 8;
	pac_buf = FUNC8(pac_len);
	if (pac_buf == NULL)
		return NULL;

	srv_id_info_len = FUNC10(data->srv_id_info);

	pos = pac_buf;
	*pos++ = PAC_OPAQUE_TYPE_KEY;
	*pos++ = EAP_FAST_PAC_KEY_LEN;
	FUNC9(pos, pac_key, EAP_FAST_PAC_KEY_LEN);
	pos += EAP_FAST_PAC_KEY_LEN;

	*pos++ = PAC_OPAQUE_TYPE_LIFETIME;
	*pos++ = 4;
	FUNC1(pos, now.sec + data->pac_key_lifetime);
	pos += 4;

	if (sm->identity) {
		*pos++ = PAC_OPAQUE_TYPE_IDENTITY;
		*pos++ = sm->identity_len;
		FUNC9(pos, sm->identity, sm->identity_len);
		pos += sm->identity_len;
	}

	pac_len = pos - pac_buf;
	while (pac_len % 8) {
		*pos++ = PAC_OPAQUE_TYPE_PAD;
		pac_len++;
	}

	pac_opaque = FUNC8(pac_len + 8);
	if (pac_opaque == NULL) {
		FUNC6(pac_buf);
		return NULL;
	}
	if (FUNC2(data->pac_opaque_encr, sizeof(data->pac_opaque_encr),
		     pac_len / 8, pac_buf, pac_opaque) < 0) {
		FUNC6(pac_buf);
		FUNC6(pac_opaque);
		return NULL;
	}
	FUNC6(pac_buf);

	pac_len += 8;
	FUNC12(MSG_DEBUG, "EAP-FAST: PAC-Opaque",
		    pac_opaque, pac_len);

	buf_len = sizeof(*pac_tlv) +
		sizeof(struct pac_tlv_hdr) + EAP_FAST_PAC_KEY_LEN +
		sizeof(struct pac_tlv_hdr) + pac_len +
		data->srv_id_len + srv_id_info_len + 100 + sizeof(*result);
	buf = FUNC15(buf_len);
	if (buf == NULL) {
		FUNC6(pac_opaque);
		return NULL;
	}

	/* Result TLV */
	FUNC14(MSG_DEBUG, "EAP-FAST: Add Result TLV (status=SUCCESS)");
	result = FUNC16(buf, sizeof(*result));
	FUNC0((u8 *) &result->tlv_type,
		     EAP_TLV_TYPE_MANDATORY | EAP_TLV_RESULT_TLV);
	FUNC0((u8 *) &result->length, 2);
	FUNC0((u8 *) &result->status, EAP_TLV_RESULT_SUCCESS);

	/* PAC TLV */
	FUNC14(MSG_DEBUG, "EAP-FAST: Add PAC TLV");
	pac_tlv = FUNC16(buf, sizeof(*pac_tlv));
	pac_tlv->tlv_type = FUNC5(EAP_TLV_TYPE_MANDATORY |
					 EAP_TLV_PAC_TLV);

	/* PAC-Key */
	FUNC3(buf, PAC_TYPE_PAC_KEY, pac_key, EAP_FAST_PAC_KEY_LEN);

	/* PAC-Opaque */
	FUNC3(buf, PAC_TYPE_PAC_OPAQUE, pac_opaque, pac_len);
	FUNC6(pac_opaque);

	/* PAC-Info */
	pac_info = FUNC16(buf, sizeof(*pac_info));
	pac_info->type = FUNC5(PAC_TYPE_PAC_INFO);

	/* PAC-Lifetime (inside PAC-Info) */
	FUNC4(buf, PAC_TYPE_CRED_LIFETIME, 4);
	FUNC18(buf, now.sec + data->pac_key_lifetime);

	/* A-ID (inside PAC-Info) */
	FUNC3(buf, PAC_TYPE_A_ID, data->srv_id, data->srv_id_len);

	/* Note: headers may be misaligned after A-ID */

	if (sm->identity) {
		FUNC3(buf, PAC_TYPE_I_ID, sm->identity,
				 sm->identity_len);
	}

	/* A-ID-Info (inside PAC-Info) */
	FUNC3(buf, PAC_TYPE_A_ID_INFO, data->srv_id_info,
			 srv_id_info_len);

	/* PAC-Type (inside PAC-Info) */
	FUNC4(buf, PAC_TYPE_PAC_TYPE, 2);
	FUNC17(buf, PAC_TYPE_TUNNEL_PAC);

	/* Update PAC-Info and PAC TLV Length fields */
	pos = FUNC16(buf, 0);
	pac_info->len = FUNC5(pos - (u8 *) (pac_info + 1));
	pac_tlv->length = FUNC5(pos - (u8 *) (pac_tlv + 1));

	return buf;
}