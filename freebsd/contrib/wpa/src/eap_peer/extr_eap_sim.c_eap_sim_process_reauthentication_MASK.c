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
struct eap_sm {int dummy; } ;
struct eap_sim_data {int reauth; size_t counter; int use_result_ind; scalar_t__ state; int /*<<< orphan*/ * nonce_s; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  mk; scalar_t__ reauth_id_len; int /*<<< orphan*/ * reauth_id; scalar_t__ last_eap_identity_len; int /*<<< orphan*/ * last_eap_identity; scalar_t__ counter_too_small; int /*<<< orphan*/  k_encr; int /*<<< orphan*/ * reauth_mac; int /*<<< orphan*/  k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; int /*<<< orphan*/ * nonce_s; scalar_t__ counter; int /*<<< orphan*/ * iv; int /*<<< orphan*/  encr_data_len; int /*<<< orphan*/ * encr_data; int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int CLEAR_EAP_ID ; 
 int CLEAR_REAUTH_ID ; 
 int /*<<< orphan*/  EAP_SIM_MAC_LEN ; 
 size_t EAP_SIM_MAX_FAST_REAUTHS ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  EAP_SIM_UNABLE_TO_PROCESS_PACKET ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RESULT_SUCCESS ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_sim_data*,int) ; 
 struct wpabuf* FUNC1 (struct eap_sim_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_sim_data*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (struct eap_sim_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct wpabuf const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC13(
	struct eap_sm *sm, struct eap_sim_data *data, u8 id,
	const struct wpabuf *reqData, struct eap_sim_attrs *attr)
{
	struct eap_sim_attrs eattr;
	u8 *decrypted;

	FUNC12(MSG_DEBUG, "EAP-SIM: subtype Reauthentication");

	if (data->reauth_id == NULL) {
		FUNC12(MSG_WARNING, "EAP-SIM: Server is trying "
			   "reauthentication, but no reauth_id available");
		return FUNC1(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	data->reauth = 1;
	if (FUNC7(data->k_aut, reqData, attr->mac, (u8 *) "", 0))
	{
		FUNC12(MSG_WARNING, "EAP-SIM: Reauthentication "
			   "did not have valid AT_MAC");
#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Ignore AT_MAC mismatch for fuzz testing");
#else /* TEST_FUZZ */
		return FUNC1(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
#endif /* TEST_FUZZ */
	}

	/* At this stage the received MAC has been verified. Use this MAC for
	 * reauth Session-Id calculation if all other checks pass.
	 * The peer does not use the local MAC but the received MAC in deriving
	 * Session-Id. */
#ifdef TEST_FUZZ
	if (attr->mac)
		os_memcpy(data->reauth_mac, attr->mac, EAP_SIM_MAC_LEN);
	else
		os_memset(data->reauth_mac, 0x12, EAP_SIM_MAC_LEN);
#else /* TEST_FUZZ */
	FUNC9(data->reauth_mac, attr->mac, EAP_SIM_MAC_LEN);
#endif /* TEST_FUZZ */
	FUNC11(MSG_DEBUG, "EAP-SIM: Server MAC",
		    data->reauth_mac, EAP_SIM_MAC_LEN);

	if (attr->encr_data == NULL || attr->iv == NULL) {
		FUNC12(MSG_WARNING, "EAP-SIM: Reauthentication "
			   "message did not include encrypted data");
		return FUNC1(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	decrypted = FUNC4(data->k_encr, attr->encr_data,
				       attr->encr_data_len, attr->iv, &eattr,
				       0);
	if (decrypted == NULL) {
		FUNC12(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
			   "data from reauthentication message");
		return FUNC1(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	if (eattr.nonce_s == NULL || eattr.counter < 0) {
		FUNC12(MSG_INFO, "EAP-SIM: (encr) No%s%s in reauth packet",
			   !eattr.nonce_s ? " AT_NONCE_S" : "",
			   eattr.counter < 0 ? " AT_COUNTER" : "");
		FUNC8(decrypted);
		return FUNC1(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	if (eattr.counter < 0 || (size_t) eattr.counter <= data->counter) {
		struct wpabuf *res;
		FUNC12(MSG_INFO, "EAP-SIM: (encr) Invalid counter "
			   "(%d <= %d)", eattr.counter, data->counter);
		data->counter_too_small = eattr.counter;

		/* Reply using Re-auth w/ AT_COUNTER_TOO_SMALL. The current
		 * reauth_id must not be used to start a new reauthentication.
		 * However, since it was used in the last EAP-Response-Identity
		 * packet, it has to saved for the following fullauth to be
		 * used in MK derivation. */
		FUNC8(data->last_eap_identity);
		data->last_eap_identity = data->reauth_id;
		data->last_eap_identity_len = data->reauth_id_len;
		data->reauth_id = NULL;
		data->reauth_id_len = 0;

		res = FUNC5(data, id, 1, eattr.nonce_s);
		FUNC8(decrypted);

		return res;
	}
	data->counter = eattr.counter;

	FUNC9(data->nonce_s, eattr.nonce_s, EAP_SIM_NONCE_S_LEN);
	FUNC11(MSG_DEBUG, "EAP-SIM: (encr) AT_NONCE_S",
		    data->nonce_s, EAP_SIM_NONCE_S_LEN);

	FUNC2(data->counter,
				   data->reauth_id, data->reauth_id_len,
				   data->nonce_s, data->mk, data->msk,
				   data->emsk);
	FUNC0(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);
	FUNC3(sm, data, &eattr);

	if (data->result_ind && attr->result_ind)
		data->use_result_ind = 1;

	if (data->state != FAILURE) {
		FUNC6(data, data->use_result_ind ?
			      RESULT_SUCCESS : SUCCESS);
	}

	data->num_id_req = 0;
	data->num_notification = 0;
	if (data->counter > EAP_SIM_MAX_FAST_REAUTHS) {
		FUNC12(MSG_DEBUG, "EAP-SIM: Maximum number of "
			   "fast reauths performed - force fullauth");
		FUNC0(sm, data,
					 CLEAR_REAUTH_ID | CLEAR_EAP_ID);
	}
	FUNC8(decrypted);
	return FUNC5(data, id, 0, data->nonce_s);
}