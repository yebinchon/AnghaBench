#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct eap_gpsk_csuite {struct eap_gpsk_csuite const* specifier; int /*<<< orphan*/  vendor; } const eap_gpsk_csuite ;
typedef  struct eap_gpsk_csuite const u8 ;
typedef  int u16 ;
struct eap_sm {int server_id_len; struct eap_gpsk_csuite const* server_id; TYPE_1__* user; } ;
struct eap_gpsk_data {scalar_t__ state; int id_peer_len; int csuite_count; size_t id_len; void* specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; struct eap_gpsk_csuite const* session_id; int /*<<< orphan*/ * id_peer; struct eap_gpsk_csuite const* rand_server; struct eap_gpsk_csuite const* rand_peer; int /*<<< orphan*/  pk_len; int /*<<< orphan*/  pk; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; struct eap_gpsk_csuite const* csuite_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  password_len; int /*<<< orphan*/ * password; } ;

/* Variables and functions */
 int EAP_GPSK_MAX_MIC_LEN ; 
 int EAP_GPSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ GPSK_1 ; 
 int /*<<< orphan*/  GPSK_3 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* FUNC0 (struct eap_gpsk_csuite const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct eap_gpsk_csuite const*,int,struct eap_gpsk_csuite const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct eap_gpsk_csuite const*,struct eap_gpsk_csuite const*,int /*<<< orphan*/ *,int,struct eap_gpsk_csuite const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct eap_gpsk_csuite const*,struct eap_gpsk_csuite const*,int /*<<< orphan*/ *,int,struct eap_gpsk_csuite const*,int,int /*<<< orphan*/ ,struct eap_gpsk_csuite const*,size_t*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct eap_gpsk_csuite const*,struct eap_gpsk_csuite const*,int) ; 
 scalar_t__ FUNC9 (struct eap_gpsk_csuite const*,struct eap_gpsk_csuite const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct eap_gpsk_csuite const*,struct eap_gpsk_csuite const*,int) ; 
 int /*<<< orphan*/ * FUNC11 (struct eap_gpsk_csuite const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,struct eap_gpsk_csuite const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC15(struct eap_sm *sm,
				    struct eap_gpsk_data *data,
				    const u8 *payload, size_t payloadlen)
{
	const u8 *pos, *end;
	u16 alen;
	const struct eap_gpsk_csuite *csuite;
	size_t i, miclen;
	u8 mic[EAP_GPSK_MAX_MIC_LEN];

	if (data->state != GPSK_1)
		return;

	FUNC14(MSG_DEBUG, "EAP-GPSK: Received Response/GPSK-2");

	pos = payload;
	end = payload + payloadlen;

	if (end - pos < 2) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "ID_Peer length");
		FUNC6(data, FAILURE);
		return;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "ID_Peer");
		FUNC6(data, FAILURE);
		return;
	}
	FUNC7(data->id_peer);
	data->id_peer = FUNC11(pos, alen);
	if (data->id_peer == NULL) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Not enough memory to store "
			   "%d-octet ID_Peer", alen);
		return;
	}
	data->id_peer_len = alen;
	FUNC13(MSG_DEBUG, "EAP-GPSK: ID_Peer",
			  data->id_peer, data->id_peer_len);
	pos += alen;

	if (end - pos < 2) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "ID_Server length");
		FUNC6(data, FAILURE);
		return;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "ID_Server");
		FUNC6(data, FAILURE);
		return;
	}
	if (alen != sm->server_id_len ||
	    FUNC8(pos, sm->server_id, alen) != 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: ID_Server in GPSK-1 and "
			   "GPSK-2 did not match");
		FUNC6(data, FAILURE);
		return;
	}
	pos += alen;

	if (end - pos < EAP_GPSK_RAND_LEN) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "RAND_Peer");
		FUNC6(data, FAILURE);
		return;
	}
	FUNC10(data->rand_peer, pos, EAP_GPSK_RAND_LEN);
	FUNC12(MSG_DEBUG, "EAP-GPSK: RAND_Peer",
		    data->rand_peer, EAP_GPSK_RAND_LEN);
	pos += EAP_GPSK_RAND_LEN;

	if (end - pos < EAP_GPSK_RAND_LEN) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "RAND_Server");
		FUNC6(data, FAILURE);
		return;
	}
	if (FUNC8(data->rand_server, pos, EAP_GPSK_RAND_LEN) != 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-1 and "
			   "GPSK-2 did not match");
		FUNC12(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-1",
			    data->rand_server, EAP_GPSK_RAND_LEN);
		FUNC12(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-2",
			    pos, EAP_GPSK_RAND_LEN);
		FUNC6(data, FAILURE);
		return;
	}
	pos += EAP_GPSK_RAND_LEN;

	if (end - pos < 2) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "CSuite_List length");
		FUNC6(data, FAILURE);
		return;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "CSuite_List");
		FUNC6(data, FAILURE);
		return;
	}
	if (alen != data->csuite_count * sizeof(struct eap_gpsk_csuite) ||
	    FUNC8(pos, data->csuite_list, alen) != 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: CSuite_List in GPSK-1 and "
			   "GPSK-2 did not match");
		FUNC6(data, FAILURE);
		return;
	}
	pos += alen;

	if (end - pos < (int) sizeof(*csuite)) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "CSuite_Sel");
		FUNC6(data, FAILURE);
		return;
	}
	csuite = (const struct eap_gpsk_csuite *) pos;
	for (i = 0; i < data->csuite_count; i++) {
		if (FUNC8(csuite, &data->csuite_list[i], sizeof(*csuite))
		    == 0)
			break;
	}
	if (i == data->csuite_count) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Peer selected unsupported "
			   "ciphersuite %d:%d",
			   FUNC1(csuite->vendor),
			   FUNC0(csuite->specifier));
		FUNC6(data, FAILURE);
		return;
	}
	data->vendor = FUNC1(csuite->vendor);
	data->specifier = FUNC0(csuite->specifier);
	FUNC14(MSG_DEBUG, "EAP-GPSK: CSuite_Sel %d:%d",
		   data->vendor, data->specifier);
	pos += sizeof(*csuite);

	if (end - pos < 2) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "PD_Payload_1 length");
		FUNC6(data, FAILURE);
		return;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "PD_Payload_1");
		FUNC6(data, FAILURE);
		return;
	}
	FUNC12(MSG_DEBUG, "EAP-GPSK: PD_Payload_1", pos, alen);
	pos += alen;

	if (sm->user == NULL || sm->user->password == NULL) {
		FUNC14(MSG_INFO, "EAP-GPSK: No PSK/password configured "
			   "for the user");
		FUNC6(data, FAILURE);
		return;
	}

	if (FUNC3(sm->user->password, sm->user->password_len,
				 data->vendor, data->specifier,
				 data->rand_peer, data->rand_server,
				 data->id_peer, data->id_peer_len,
				 sm->server_id, sm->server_id_len,
				 data->msk, data->emsk,
				 data->sk, &data->sk_len,
				 data->pk, &data->pk_len) < 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Failed to derive keys");
		FUNC6(data, FAILURE);
		return;
	}

	if (FUNC4(sm->user->password,
				       sm->user->password_len,
				       data->vendor, data->specifier,
				       data->rand_peer, data->rand_server,
				       data->id_peer, data->id_peer_len,
				       sm->server_id, sm->server_id_len,
				       EAP_TYPE_GPSK,
				       data->session_id, &data->id_len) < 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Failed to derive Session-Id");
		FUNC6(data, FAILURE);
		return;
	}
	FUNC12(MSG_DEBUG, "EAP-GPSK: Derived Session-Id",
		    data->session_id, data->id_len);

	miclen = FUNC5(data->vendor, data->specifier);
	if (end - pos < (int) miclen) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Message too short for MIC "
			   "(left=%lu miclen=%lu)",
			   (unsigned long) (end - pos),
			   (unsigned long) miclen);
		FUNC6(data, FAILURE);
		return;
	}
	if (FUNC2(data->sk, data->sk_len, data->vendor,
				 data->specifier, payload, pos - payload, mic)
	    < 0) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Failed to compute MIC");
		FUNC6(data, FAILURE);
		return;
	}
	if (FUNC9(mic, pos, miclen) != 0) {
		FUNC14(MSG_INFO, "EAP-GPSK: Incorrect MIC in GPSK-2");
		FUNC12(MSG_DEBUG, "EAP-GPSK: Received MIC", pos, miclen);
		FUNC12(MSG_DEBUG, "EAP-GPSK: Computed MIC", mic, miclen);
		FUNC6(data, FAILURE);
		return;
	}
	pos += miclen;

	if (pos != end) {
		FUNC14(MSG_DEBUG, "EAP-GPSK: Ignored %lu bytes of extra "
			   "data in the end of GPSK-2",
			   (unsigned long) (end - pos));
	}

	FUNC6(data, GPSK_3);
}