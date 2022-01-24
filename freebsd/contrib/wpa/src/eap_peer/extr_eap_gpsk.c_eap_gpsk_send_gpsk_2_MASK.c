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
struct eap_gpsk_data {int id_peer_len; int id_server_len; int id_len; int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; int /*<<< orphan*/  const* session_id; int /*<<< orphan*/  const* id_server; int /*<<< orphan*/  const* id_peer; int /*<<< orphan*/  const* rand_server; int /*<<< orphan*/  const* rand_peer; int /*<<< orphan*/  psk_len; int /*<<< orphan*/  psk; int /*<<< orphan*/  pk_len; int /*<<< orphan*/  pk; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; } ;
struct eap_gpsk_csuite {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_GPSK_OPCODE_GPSK_2 ; 
 int EAP_GPSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 void* FUNC13 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC17(struct eap_gpsk_data *data,
					    u8 identifier,
					    const u8 *csuite_list,
					    size_t csuite_list_len)
{
	struct wpabuf *resp;
	size_t len, miclen;
	u8 *rpos, *start;
	struct eap_gpsk_csuite *csuite;

	FUNC11(MSG_DEBUG, "EAP-GPSK: Sending Response/GPSK-2");

	miclen = FUNC5(data->vendor, data->specifier);
	len = 1 + 2 + data->id_peer_len + 2 + data->id_server_len +
		2 * EAP_GPSK_RAND_LEN + 2 + csuite_list_len +
		sizeof(struct eap_gpsk_csuite) + 2 + miclen;

	resp = FUNC7(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
			     EAP_CODE_RESPONSE, identifier);
	if (resp == NULL)
		return NULL;

	FUNC16(resp, EAP_GPSK_OPCODE_GPSK_2);
	start = FUNC13(resp, 0);

	FUNC10(MSG_DEBUG, "EAP-GPSK: ID_Peer",
			  data->id_peer, data->id_peer_len);
	FUNC14(resp, data->id_peer_len);
	FUNC15(resp, data->id_peer, data->id_peer_len);

	FUNC14(resp, data->id_server_len);
	FUNC15(resp, data->id_server, data->id_server_len);

	if (FUNC8(data->rand_peer, EAP_GPSK_RAND_LEN)) {
		FUNC11(MSG_DEBUG, "EAP-GPSK: Failed to get random data "
			   "for RAND_Peer");
		FUNC6(data, FAILURE);
		FUNC12(resp);
		return NULL;
	}
	FUNC9(MSG_DEBUG, "EAP-GPSK: RAND_Peer",
		    data->rand_peer, EAP_GPSK_RAND_LEN);
	FUNC15(resp, data->rand_peer, EAP_GPSK_RAND_LEN);
	FUNC15(resp, data->rand_server, EAP_GPSK_RAND_LEN);

	FUNC14(resp, csuite_list_len);
	FUNC15(resp, csuite_list, csuite_list_len);

	csuite = FUNC13(resp, sizeof(*csuite));
	FUNC1(csuite->vendor, data->vendor);
	FUNC0(csuite->specifier, data->specifier);

	if (FUNC3(data->psk, data->psk_len,
				 data->vendor, data->specifier,
				 data->rand_peer, data->rand_server,
				 data->id_peer, data->id_peer_len,
				 data->id_server, data->id_server_len,
				 data->msk, data->emsk,
				 data->sk, &data->sk_len,
				 data->pk, &data->pk_len) < 0) {
		FUNC11(MSG_DEBUG, "EAP-GPSK: Failed to derive keys");
		FUNC6(data, FAILURE);
		FUNC12(resp);
		return NULL;
	}

	if (FUNC4(data->psk, data->psk_len,
				       data->vendor, data->specifier,
				       data->rand_peer, data->rand_server,
				       data->id_peer, data->id_peer_len,
				       data->id_server, data->id_server_len,
				       EAP_TYPE_GPSK,
				       data->session_id, &data->id_len) < 0) {
		FUNC11(MSG_DEBUG, "EAP-GPSK: Failed to derive Session-Id");
		FUNC6(data, FAILURE);
		FUNC12(resp);
		return NULL;
	}
	FUNC9(MSG_DEBUG, "EAP-GPSK: Derived Session-Id",
		    data->session_id, data->id_len);

	/* No PD_Payload_1 */
	FUNC14(resp, 0);

	rpos = FUNC13(resp, miclen);
	if (FUNC2(data->sk, data->sk_len, data->vendor,
				 data->specifier, start, rpos - start, rpos) <
	    0) {
		FUNC6(data, FAILURE);
		FUNC12(resp);
		return NULL;
	}

	return resp;
}