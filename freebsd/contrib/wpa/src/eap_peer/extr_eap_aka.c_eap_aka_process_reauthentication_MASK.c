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
struct eap_sim_attrs {scalar_t__ result_ind; int /*<<< orphan*/ * nonce_s; scalar_t__ counter; int /*<<< orphan*/ * iv; int /*<<< orphan*/  encr_data_len; int /*<<< orphan*/ * encr_data; int /*<<< orphan*/ * mac; int /*<<< orphan*/  checkcode_len; scalar_t__ checkcode; } ;
struct eap_aka_data {int reauth; size_t counter; scalar_t__ eap_method; int use_result_ind; scalar_t__ state; int /*<<< orphan*/ * nonce_s; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  mk; scalar_t__ reauth_id_len; int /*<<< orphan*/ * reauth_id; int /*<<< orphan*/  k_re; scalar_t__ last_eap_identity_len; int /*<<< orphan*/ * last_eap_identity; scalar_t__ counter_too_small; int /*<<< orphan*/  k_encr; int /*<<< orphan*/ * reauth_mac; } ;

/* Variables and functions */
 int CLEAR_EAP_ID ; 
 int CLEAR_REAUTH_ID ; 
 size_t EAP_AKA_MAX_FAST_REAUTHS ; 
 int /*<<< orphan*/  EAP_AKA_UNABLE_TO_PROCESS_PACKET ; 
 int /*<<< orphan*/  EAP_SIM_MAC_LEN ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RESULT_SUCCESS ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_aka_data*,int) ; 
 struct wpabuf* FUNC1 (struct eap_aka_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_aka_data*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (struct eap_aka_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct eap_aka_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct eap_aka_data*,struct wpabuf const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC14(
	struct eap_sm *sm, struct eap_aka_data *data, u8 id,
	const struct wpabuf *reqData, struct eap_sim_attrs *attr)
{
	struct eap_sim_attrs eattr;
	u8 *decrypted;

	FUNC13(MSG_DEBUG, "EAP-AKA: subtype Reauthentication");

	if (attr->checkcode &&
	    FUNC6(data, attr->checkcode,
				     attr->checkcode_len)) {
#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Ignore AT_CHECKCODE mismatch for fuzz testing");
#else /* TEST_FUZZ */
		FUNC13(MSG_WARNING, "EAP-AKA: Invalid AT_CHECKCODE in the "
			   "message");
#endif /* TEST_FUZZ */
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	if (data->reauth_id == NULL) {
		FUNC13(MSG_WARNING, "EAP-AKA: Server is trying "
			   "reauthentication, but no reauth_id available");
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	data->reauth = 1;
	if (FUNC7(data, reqData, attr->mac, (u8 *) "", 0)) {
		FUNC13(MSG_WARNING, "EAP-AKA: Reauthentication "
			   "did not have valid AT_MAC");
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	/* At this stage the received MAC has been verified. Use this MAC for
	 * reauth Session-Id calculation if all other checks pass.
	 * The peer does not use the local MAC but the received MAC in deriving
	 * Session-Id. */
	FUNC11(data->reauth_mac, attr->mac, EAP_SIM_MAC_LEN);
	FUNC12(MSG_DEBUG, "EAP-AKA: Server MAC",
		    data->reauth_mac, EAP_SIM_MAC_LEN);

	if (attr->encr_data == NULL || attr->iv == NULL) {
		FUNC13(MSG_WARNING, "EAP-AKA: Reauthentication "
			   "message did not include encrypted data");
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	decrypted = FUNC9(data->k_encr, attr->encr_data,
				       attr->encr_data_len, attr->iv, &eattr,
				       0);
	if (decrypted == NULL) {
		FUNC13(MSG_WARNING, "EAP-AKA: Failed to parse encrypted "
			   "data from reauthentication message");
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	if (eattr.nonce_s == NULL || eattr.counter < 0) {
		FUNC13(MSG_INFO, "EAP-AKA: (encr) No%s%s in reauth packet",
			   !eattr.nonce_s ? " AT_NONCE_S" : "",
			   eattr.counter < 0 ? " AT_COUNTER" : "");
		FUNC10(decrypted);
		return FUNC1(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	if (eattr.counter < 0 || (size_t) eattr.counter <= data->counter) {
		struct wpabuf *res;
		FUNC13(MSG_INFO, "EAP-AKA: (encr) Invalid counter "
			   "(%d <= %d)", eattr.counter, data->counter);
		data->counter_too_small = eattr.counter;

		/* Reply using Re-auth w/ AT_COUNTER_TOO_SMALL. The current
		 * reauth_id must not be used to start a new reauthentication.
		 * However, since it was used in the last EAP-Response-Identity
		 * packet, it has to saved for the following fullauth to be
		 * used in MK derivation. */
		FUNC10(data->last_eap_identity);
		data->last_eap_identity = data->reauth_id;
		data->last_eap_identity_len = data->reauth_id_len;
		data->reauth_id = NULL;
		data->reauth_id_len = 0;

		res = FUNC4(data, id, 1, eattr.nonce_s);
		FUNC10(decrypted);

		return res;
	}
	data->counter = eattr.counter;

	FUNC11(data->nonce_s, eattr.nonce_s, EAP_SIM_NONCE_S_LEN);
	FUNC12(MSG_DEBUG, "EAP-AKA: (encr) AT_NONCE_S",
		    data->nonce_s, EAP_SIM_NONCE_S_LEN);

	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		FUNC3(data->k_re, data->counter,
						 data->reauth_id,
						 data->reauth_id_len,
						 data->nonce_s,
						 data->msk, data->emsk);
	} else {
		FUNC8(data->counter, data->reauth_id,
					   data->reauth_id_len,
					   data->nonce_s, data->mk,
					   data->msk, data->emsk);
	}
	FUNC0(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);
	FUNC2(sm, data, &eattr);

	if (data->result_ind && attr->result_ind)
		data->use_result_ind = 1;

	if (data->state != FAILURE) {
		FUNC5(data, data->use_result_ind ?
			      RESULT_SUCCESS : SUCCESS);
	}

	data->num_id_req = 0;
	data->num_notification = 0;
	if (data->counter > EAP_AKA_MAX_FAST_REAUTHS) {
		FUNC13(MSG_DEBUG, "EAP-AKA: Maximum number of "
			   "fast reauths performed - force fullauth");
		FUNC0(sm, data,
					 CLEAR_REAUTH_ID | CLEAR_EAP_ID);
	}
	FUNC10(decrypted);
	return FUNC4(data, id, 0, data->nonce_s);
}