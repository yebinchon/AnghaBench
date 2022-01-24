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
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int* server_id; } ;
struct eap_psk_hdr_3 {int* rand_s; int /*<<< orphan*/  mac_s; int /*<<< orphan*/  flags; } ;
struct eap_psk_data {int* rand_s; int* rand_p; void* state; int /*<<< orphan*/  tek; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  kdk; int /*<<< orphan*/  ak; } ;
typedef  int /*<<< orphan*/  nonce ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_EMSK_LEN ; 
 int /*<<< orphan*/  EAP_MSK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAP_PSK_RAND_LEN ; 
 int EAP_PSK_R_FLAG_DONE_SUCCESS ; 
 int /*<<< orphan*/  EAP_PSK_TEK_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 void* FUNC14 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct eap_sm *sm,
				       struct eap_psk_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_psk_hdr_3 *psk;
	u8 *buf, *pchannel, nonce[16];
	size_t buflen;

	FUNC11(MSG_DEBUG, "EAP-PSK: PSK-3 (sending)");

	req = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_PSK,
			    sizeof(*psk) + 4 + 16 + 1, EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC11(MSG_ERROR, "EAP-PSK: Failed to allocate memory "
			   "request");
		data->state = FAILURE;
		return NULL;
	}

	psk = FUNC14(req, sizeof(*psk));
	psk->flags = FUNC0(2); /* T=2 */
	FUNC7(psk->rand_s, data->rand_s, EAP_PSK_RAND_LEN);

	/* MAC_S = OMAC1-AES-128(AK, ID_S||RAND_P) */
	buflen = sm->server_id_len + EAP_PSK_RAND_LEN;
	buf = FUNC6(buflen);
	if (buf == NULL)
		goto fail;

	FUNC7(buf, sm->server_id, sm->server_id_len);
	FUNC7(buf + sm->server_id_len, data->rand_p, EAP_PSK_RAND_LEN);
	if (FUNC4(data->ak, buf, buflen, psk->mac_s)) {
		FUNC5(buf);
		goto fail;
	}
	FUNC5(buf);

	if (FUNC3(data->kdk, data->rand_p, data->tek, data->msk,
				data->emsk))
		goto fail;
	FUNC10(MSG_DEBUG, "EAP-PSK: TEK", data->tek, EAP_PSK_TEK_LEN);
	FUNC10(MSG_DEBUG, "EAP-PSK: MSK", data->msk, EAP_MSK_LEN);
	FUNC10(MSG_DEBUG, "EAP-PSK: EMSK", data->emsk, EAP_EMSK_LEN);

	FUNC8(nonce, 0, sizeof(nonce));
	pchannel = FUNC14(req, 4 + 16 + 1);
	FUNC7(pchannel, nonce + 12, 4);
	FUNC8(pchannel + 4, 0, 16); /* Tag */
	pchannel[4 + 16] = EAP_PSK_R_FLAG_DONE_SUCCESS << 6;
	FUNC9(MSG_DEBUG, "EAP-PSK: PCHANNEL (plaintext)",
		    pchannel, 4 + 16 + 1);
	if (FUNC1(data->tek, nonce, sizeof(nonce),
				FUNC13(req), 22,
				pchannel + 4 + 16, 1, pchannel + 4))
		goto fail;
	FUNC9(MSG_DEBUG, "EAP-PSK: PCHANNEL (encrypted)",
		    pchannel, 4 + 16 + 1);

	return req;

fail:
	FUNC12(req);
	data->state = FAILURE;
	return NULL;
}