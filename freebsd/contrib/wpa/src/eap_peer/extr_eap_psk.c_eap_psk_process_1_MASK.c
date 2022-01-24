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
struct eap_psk_hdr_2 {int /*<<< orphan*/ * mac_p; int /*<<< orphan*/ * rand_p; int /*<<< orphan*/ * rand_s; int /*<<< orphan*/  flags; } ;
struct eap_psk_hdr_1 {int /*<<< orphan*/ * rand_s; int /*<<< orphan*/  flags; } ;
struct eap_psk_data {size_t id_s_len; int id_p_len; int /*<<< orphan*/  state; int /*<<< orphan*/ * id_p; int /*<<< orphan*/  ak; int /*<<< orphan*/ * rand_p; int /*<<< orphan*/ * id_s; int /*<<< orphan*/ * rand_s; } ;
struct eap_method_ret {void* ignore; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAP_PSK_MAC_LEN ; 
 int EAP_PSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PSK_MAC_SENT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct eap_psk_hdr_1 const*,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 struct eap_psk_hdr_2* FUNC15 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct wpabuf * FUNC17(struct eap_psk_data *data,
					 struct eap_method_ret *ret,
					 const struct wpabuf *reqData)
{
	const struct eap_psk_hdr_1 *hdr1;
	struct eap_psk_hdr_2 *hdr2;
	struct wpabuf *resp;
	u8 *buf, *pos;
	size_t buflen, len;
	const u8 *cpos;

	FUNC13(MSG_DEBUG, "EAP-PSK: in INIT state");

	cpos = FUNC3(EAP_VENDOR_IETF, EAP_TYPE_PSK, reqData, &len);
	hdr1 = (const struct eap_psk_hdr_1 *) cpos;
	if (cpos == NULL || len < sizeof(*hdr1)) {
		FUNC13(MSG_INFO, "EAP-PSK: Invalid first message "
			   "length (%lu; expected %lu or more)",
			   (unsigned long) len,
			   (unsigned long) sizeof(*hdr1));
		ret->ignore = TRUE;
		return NULL;
	}
	FUNC13(MSG_DEBUG, "EAP-PSK: Flags=0x%x", hdr1->flags);
	if (FUNC0(hdr1->flags) != 0) {
		FUNC13(MSG_INFO, "EAP-PSK: Unexpected T=%d (expected 0)",
			   FUNC0(hdr1->flags));
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return NULL;
	}
	FUNC11(MSG_DEBUG, "EAP-PSK: RAND_S", hdr1->rand_s,
		    EAP_PSK_RAND_LEN);
	FUNC8(data->rand_s, hdr1->rand_s, EAP_PSK_RAND_LEN);
	FUNC6(data->id_s);
	data->id_s_len = len - sizeof(*hdr1);
	data->id_s = FUNC9(hdr1 + 1, data->id_s_len);
	if (data->id_s == NULL) {
		FUNC13(MSG_ERROR, "EAP-PSK: Failed to allocate memory for "
			   "ID_S (len=%lu)", (unsigned long) data->id_s_len);
		ret->ignore = TRUE;
		return NULL;
	}
	FUNC12(MSG_DEBUG, "EAP-PSK: ID_S",
			  data->id_s, data->id_s_len);

	if (FUNC10(data->rand_p, EAP_PSK_RAND_LEN)) {
		FUNC13(MSG_ERROR, "EAP-PSK: Failed to get random data");
		ret->ignore = TRUE;
		return NULL;
	}

	resp = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_PSK,
			     sizeof(*hdr2) + data->id_p_len, EAP_CODE_RESPONSE,
			     FUNC2(reqData));
	if (resp == NULL)
		return NULL;
	hdr2 = FUNC15(resp, sizeof(*hdr2));
	hdr2->flags = FUNC1(1); /* T=1 */
	FUNC8(hdr2->rand_s, hdr1->rand_s, EAP_PSK_RAND_LEN);
	FUNC8(hdr2->rand_p, data->rand_p, EAP_PSK_RAND_LEN);
	FUNC16(resp, data->id_p, data->id_p_len);
	/* MAC_P = OMAC1-AES-128(AK, ID_P||ID_S||RAND_S||RAND_P) */
	buflen = data->id_p_len + data->id_s_len + 2 * EAP_PSK_RAND_LEN;
	buf = FUNC7(buflen);
	if (buf == NULL) {
		FUNC14(resp);
		return NULL;
	}
	FUNC8(buf, data->id_p, data->id_p_len);
	pos = buf + data->id_p_len;
	FUNC8(pos, data->id_s, data->id_s_len);
	pos += data->id_s_len;
	FUNC8(pos, hdr1->rand_s, EAP_PSK_RAND_LEN);
	pos += EAP_PSK_RAND_LEN;
	FUNC8(pos, data->rand_p, EAP_PSK_RAND_LEN);
	if (FUNC5(data->ak, buf, buflen, hdr2->mac_p)) {
		FUNC6(buf);
		FUNC14(resp);
		return NULL;
	}
	FUNC6(buf);
	FUNC11(MSG_DEBUG, "EAP-PSK: RAND_P", hdr2->rand_p,
		    EAP_PSK_RAND_LEN);
	FUNC11(MSG_DEBUG, "EAP-PSK: MAC_P", hdr2->mac_p, EAP_PSK_MAC_LEN);
	FUNC12(MSG_DEBUG, "EAP-PSK: ID_P",
			  data->id_p, data->id_p_len);

	data->state = PSK_MAC_SENT;

	return resp;
}