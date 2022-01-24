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
struct eap_sim_data {int min_num_chal; int num_chal; size_t last_eap_identity_len; size_t pseudonym_len; int use_result_ind; scalar_t__ state; scalar_t__ counter; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  nonce_mt; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  mk; scalar_t__ kc; int /*<<< orphan*/  ver_list_len; int /*<<< orphan*/  ver_list; int /*<<< orphan*/  selected_version; int /*<<< orphan*/ * pseudonym; int /*<<< orphan*/ * last_eap_identity; int /*<<< orphan*/  rand; scalar_t__ reauth; } ;
struct eap_sim_attrs {int num_chal; scalar_t__ result_ind; int /*<<< orphan*/  iv; int /*<<< orphan*/  encr_data_len; scalar_t__ encr_data; int /*<<< orphan*/  mac; scalar_t__ rand; } ;
struct eap_peer_config {size_t imsi_identity_len; int /*<<< orphan*/ * imsi_identity; } ;

/* Variables and functions */
 int CLEAR_EAP_ID ; 
 int CLEAR_REAUTH_ID ; 
 int /*<<< orphan*/  EAP_SIM_INSUFFICIENT_NUM_OF_CHAL ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_MT_LEN ; 
 int /*<<< orphan*/  EAP_SIM_RAND_NOT_FRESH ; 
 int /*<<< orphan*/  EAP_SIM_UNABLE_TO_PROCESS_PACKET ; 
 scalar_t__ FAILURE ; 
 int GSM_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RESULT_SUCCESS ; 
 int /*<<< orphan*/  SUCCESS ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_sim_data*,int) ; 
 struct wpabuf* FUNC4 (struct eap_sim_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct eap_sm*,struct eap_sim_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_sm*,struct eap_sim_data*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC10 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct wpabuf const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC18(struct eap_sm *sm,
						 struct eap_sim_data *data,
						 u8 id,
						 const struct wpabuf *reqData,
						 struct eap_sim_attrs *attr)
{
	const u8 *identity;
	size_t identity_len;
	struct eap_sim_attrs eattr;
	int res;

	FUNC17(MSG_DEBUG, "EAP-SIM: subtype Challenge");
	data->reauth = 0;
	if (!attr->mac || !attr->rand) {
		FUNC17(MSG_WARNING, "EAP-SIM: Challenge message "
			   "did not include%s%s",
			   !attr->mac ? " AT_MAC" : "",
			   !attr->rand ? " AT_RAND" : "");
		return FUNC4(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	FUNC17(MSG_DEBUG, "EAP-SIM: %lu challenges",
		   (unsigned long) attr->num_chal);
	if (attr->num_chal < data->min_num_chal) {
		FUNC17(MSG_INFO, "EAP-SIM: Insufficient number of "
			   "challenges (%lu)", (unsigned long) attr->num_chal);
		return FUNC4(data, id,
					    EAP_SIM_INSUFFICIENT_NUM_OF_CHAL);
	}
	if (attr->num_chal > 3) {
		FUNC17(MSG_INFO, "EAP-SIM: Too many challenges "
			   "(%lu)", (unsigned long) attr->num_chal);
		return FUNC4(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}

	/* Verify that RANDs are different */
	if (FUNC14(attr->rand, attr->rand + GSM_RAND_LEN,
		   GSM_RAND_LEN) == 0 ||
	    (attr->num_chal > 2 &&
	     (FUNC14(attr->rand, attr->rand + 2 * GSM_RAND_LEN,
			GSM_RAND_LEN) == 0 ||
	      FUNC14(attr->rand + GSM_RAND_LEN,
			attr->rand + 2 * GSM_RAND_LEN,
			GSM_RAND_LEN) == 0))) {
		FUNC17(MSG_INFO, "EAP-SIM: Same RAND used multiple times");
		return FUNC4(data, id,
					    EAP_SIM_RAND_NOT_FRESH);
	}

	FUNC15(data->rand, attr->rand, attr->num_chal * GSM_RAND_LEN);
	data->num_chal = attr->num_chal;

	res = FUNC7(sm, data);
	if (res > 0) {
		FUNC17(MSG_DEBUG, "EAP-SIM: Wait for external SIM processing");
		return NULL;
	}
	if (res) {
		FUNC17(MSG_WARNING, "EAP-SIM: GSM authentication failed");
		return FUNC4(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
	}
	if (data->last_eap_identity) {
		identity = data->last_eap_identity;
		identity_len = data->last_eap_identity_len;
	} else if (data->pseudonym &&
		   !FUNC2(data->pseudonym,
					       data->pseudonym_len)) {
		identity = data->pseudonym;
		identity_len = data->pseudonym_len;
	} else {
		struct eap_peer_config *config;

		config = FUNC0(sm);
		if (config && config->imsi_identity) {
			identity = config->imsi_identity;
			identity_len = config->imsi_identity_len;
		} else {
			identity = FUNC1(sm, &identity_len);
		}
	}
	FUNC16(MSG_DEBUG, "EAP-SIM: Selected identity for MK "
			  "derivation", identity, identity_len);
	FUNC6(identity, identity_len, data->nonce_mt,
			  data->selected_version, data->ver_list,
			  data->ver_list_len, data->num_chal,
			  (const u8 *) data->kc, data->mk);
	FUNC5(data->mk, data->k_encr, data->k_aut, data->msk,
			    data->emsk);
	if (FUNC12(data->k_aut, reqData, attr->mac, data->nonce_mt,
			       EAP_SIM_NONCE_MT_LEN)) {
		FUNC17(MSG_WARNING, "EAP-SIM: Challenge message "
			   "used invalid AT_MAC");
#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Ignore AT_MAC mismatch for fuzz testing");
#else /* TEST_FUZZ */
		return FUNC4(data, id,
					    EAP_SIM_UNABLE_TO_PROCESS_PACKET);
#endif /* TEST_FUZZ */
	}

	/* Old reauthentication identity must not be used anymore. In
	 * other words, if no new reauth identity is received, full
	 * authentication will be used on next reauthentication (using
	 * pseudonym identity or permanent identity). */
	FUNC3(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);

	if (attr->encr_data) {
		u8 *decrypted;
		decrypted = FUNC9(data->k_encr, attr->encr_data,
					       attr->encr_data_len, attr->iv,
					       &eattr, 0);
		if (decrypted == NULL) {
			return FUNC4(
				data, id, EAP_SIM_UNABLE_TO_PROCESS_PACKET);
		}
		FUNC8(sm, data, &eattr);
		FUNC13(decrypted);
	}

	if (data->result_ind && attr->result_ind)
		data->use_result_ind = 1;

	if (data->state != FAILURE) {
		FUNC11(data, data->use_result_ind ?
			      RESULT_SUCCESS : SUCCESS);
	}

	data->num_id_req = 0;
	data->num_notification = 0;
	/* RFC 4186 specifies that counter is initialized to one after
	 * fullauth, but initializing it to zero makes it easier to implement
	 * reauth verification. */
	data->counter = 0;
	return FUNC10(data, id);
}