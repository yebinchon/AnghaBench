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
struct eap_sim_attrs {scalar_t__ kdf_input_len; scalar_t__* kdf; scalar_t__ result_ind; int /*<<< orphan*/  iv; int /*<<< orphan*/  encr_data_len; scalar_t__ encr_data; int /*<<< orphan*/  mac; int /*<<< orphan*/  autn; int /*<<< orphan*/  rand; scalar_t__ bidding; int /*<<< orphan*/  kdf_input; int /*<<< orphan*/  checkcode_len; scalar_t__ checkcode; } ;
struct eap_peer_config {size_t imsi_identity_len; int /*<<< orphan*/  const* imsi_identity; } ;
struct eap_aka_data {scalar_t__ eap_method; scalar_t__ network_name_len; size_t last_eap_identity_len; size_t pseudonym_len; int use_result_ind; scalar_t__ state; scalar_t__ counter; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  mk; int /*<<< orphan*/  ck; int /*<<< orphan*/  ik; int /*<<< orphan*/  k_re; int /*<<< orphan*/  const* pseudonym; int /*<<< orphan*/  const* last_eap_identity; int /*<<< orphan*/  const* network_name; scalar_t__ autn; scalar_t__ rand; scalar_t__ reauth; scalar_t__ kdf; } ;

/* Variables and functions */
 int CLEAR_EAP_ID ; 
 int CLEAR_REAUTH_ID ; 
 int /*<<< orphan*/  EAP_AKA_AUTN_LEN ; 
 int EAP_AKA_BIDDING_FLAG_D ; 
 scalar_t__ EAP_AKA_PRIME_KDF ; 
 int /*<<< orphan*/  EAP_AKA_RAND_LEN ; 
 int /*<<< orphan*/  EAP_AKA_UNABLE_TO_PROCESS_PACKET ; 
 scalar_t__ EAP_TYPE_AKA ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RESULT_SUCCESS ; 
 int /*<<< orphan*/  SUCCESS ; 
 int FUNC0 (scalar_t__) ; 
 struct wpabuf* FUNC1 (struct eap_aka_data*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_aka_data*,int) ; 
 struct wpabuf* FUNC3 (struct eap_aka_data*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_aka_data*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC8 (struct eap_aka_data*,int /*<<< orphan*/  const,struct eap_sim_attrs*) ; 
 int FUNC9 (struct eap_aka_data*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC10 (struct eap_aka_data*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC12 (struct eap_aka_data*,int /*<<< orphan*/  const,struct eap_sim_attrs*) ; 
 int FUNC13 (struct eap_sm*,struct eap_aka_data*) ; 
 scalar_t__ FUNC14 (struct eap_aka_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct eap_aka_data*,struct wpabuf const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct eap_sm*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct eap_peer_config* FUNC17 (struct eap_sm*) ; 
 int /*<<< orphan*/  const* FUNC18 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC27(struct eap_sm *sm,
						 struct eap_aka_data *data,
						 u8 id,
						 const struct wpabuf *reqData,
						 struct eap_sim_attrs *attr)
{
	const u8 *identity;
	size_t identity_len;
	int res;
	struct eap_sim_attrs eattr;

	FUNC26(MSG_DEBUG, "EAP-AKA: subtype Challenge");

	if (attr->checkcode &&
	    FUNC14(data, attr->checkcode,
				     attr->checkcode_len)) {
		FUNC26(MSG_WARNING, "EAP-AKA: Invalid AT_CHECKCODE in the "
			   "message");
#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Ignore AT_CHECKCODE mismatch for fuzz testing");
#else /* TEST_FUZZ */
		return FUNC3(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
#endif /* TEST_FUZZ */
	}

#ifdef EAP_AKA_PRIME
	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		if (!attr->kdf_input || attr->kdf_input_len == 0) {
			wpa_printf(MSG_WARNING, "EAP-AKA': Challenge message "
				   "did not include non-empty AT_KDF_INPUT");
			/* Fail authentication as if AUTN had been incorrect */
			return eap_aka_authentication_reject(data, id);
		}
		os_free(data->network_name);
		data->network_name = os_memdup(attr->kdf_input,
					       attr->kdf_input_len);
		if (data->network_name == NULL) {
			wpa_printf(MSG_WARNING, "EAP-AKA': No memory for "
				   "storing Network Name");
			return eap_aka_authentication_reject(data, id);
		}
		data->network_name_len = attr->kdf_input_len;
		wpa_hexdump_ascii(MSG_DEBUG, "EAP-AKA': Network Name "
				  "(AT_KDF_INPUT)",
				  data->network_name, data->network_name_len);
		/* TODO: check Network Name per 3GPP.33.402 */

		res = eap_aka_prime_kdf_valid(data, attr);
		if (res == 0)
			return eap_aka_authentication_reject(data, id);
		else if (res == -1)
			return eap_aka_client_error(
				data, id, EAP_AKA_UNABLE_TO_PROCESS_PACKET);

		if (attr->kdf[0] != EAP_AKA_PRIME_KDF)
			return eap_aka_prime_kdf_neg(data, id, attr);

		data->kdf = EAP_AKA_PRIME_KDF;
		wpa_printf(MSG_DEBUG, "EAP-AKA': KDF %d selected", data->kdf);
	}

	if (data->eap_method == EAP_TYPE_AKA && attr->bidding) {
		u16 flags = WPA_GET_BE16(attr->bidding);
		if ((flags & EAP_AKA_BIDDING_FLAG_D) &&
		    eap_allowed_method(sm, EAP_VENDOR_IETF,
				       EAP_TYPE_AKA_PRIME)) {
			wpa_printf(MSG_WARNING, "EAP-AKA: Bidding down from "
				   "AKA' to AKA detected");
			/* Fail authentication as if AUTN had been incorrect */
			return eap_aka_authentication_reject(data, id);
		}
	}
#endif /* EAP_AKA_PRIME */

	data->reauth = 0;
	if (!attr->mac || !attr->rand || !attr->autn) {
		FUNC26(MSG_WARNING, "EAP-AKA: Challenge message "
			   "did not include%s%s%s",
			   !attr->mac ? " AT_MAC" : "",
			   !attr->rand ? " AT_RAND" : "",
			   !attr->autn ? " AT_AUTN" : "");
		return FUNC3(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}
	FUNC23(data->rand, attr->rand, EAP_AKA_RAND_LEN);
	FUNC23(data->autn, attr->autn, EAP_AKA_AUTN_LEN);

	res = FUNC13(sm, data);
	if (res == -1) {
		FUNC26(MSG_WARNING, "EAP-AKA: UMTS authentication "
			   "failed (AUTN)");
		return FUNC1(data, id);
	} else if (res == -2) {
		FUNC26(MSG_WARNING, "EAP-AKA: UMTS authentication "
			   "failed (AUTN seq# -> AUTS)");
		return FUNC12(data, id, attr);
	} else if (res > 0) {
		FUNC26(MSG_DEBUG, "EAP-AKA: Wait for external USIM processing");
		return NULL;
	} else if (res) {
		FUNC26(MSG_WARNING, "EAP-AKA: UMTS authentication failed");
		return FUNC3(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}
#ifdef EAP_AKA_PRIME
	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		/* Note: AUTN = (SQN ^ AK) || AMF || MAC which gives us the
		 * needed 6-octet SQN ^ AK for CK',IK' derivation */
		u16 amf = WPA_GET_BE16(data->autn + 6);
		if (!(amf & 0x8000)) {
			wpa_printf(MSG_WARNING, "EAP-AKA': AMF separation bit "
				   "not set (AMF=0x%4x)", amf);
			return eap_aka_authentication_reject(data, id);
		}
		eap_aka_prime_derive_ck_ik_prime(data->ck, data->ik,
						 data->autn,
						 data->network_name,
						 data->network_name_len);
	}
#endif /* EAP_AKA_PRIME */
	if (data->last_eap_identity) {
		identity = data->last_eap_identity;
		identity_len = data->last_eap_identity_len;
	} else if (data->pseudonym &&
		   !FUNC19(data->pseudonym,
					       data->pseudonym_len)) {
		identity = data->pseudonym;
		identity_len = data->pseudonym_len;
	} else {
		struct eap_peer_config *config;

		config = FUNC17(sm);
		if (config && config->imsi_identity) {
			identity = config->imsi_identity;
			identity_len = config->imsi_identity_len;
		} else {
			identity = FUNC18(sm, &identity_len);
		}
	}
	FUNC25(MSG_DEBUG, "EAP-AKA: Selected identity for MK "
			  "derivation", identity, identity_len);
	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		FUNC7(identity, identity_len, data->ik,
					  data->ck, data->k_encr, data->k_aut,
					  data->k_re, data->msk, data->emsk);
	} else {
		FUNC4(identity, identity_len, data->ik, data->ck,
				  data->mk);
		FUNC20(data->mk, data->k_encr, data->k_aut,
				    data->msk, data->emsk);
	}
	if (FUNC15(data, reqData, attr->mac, (u8 *) "", 0)) {
		FUNC26(MSG_WARNING, "EAP-AKA: Challenge message "
			   "used invalid AT_MAC");
#ifdef TEST_FUZZ
		wpa_printf(MSG_INFO,
			   "TEST: Ignore AT_MAC mismatch for fuzz testing");
#else /* TEST_FUZZ */
		return FUNC3(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
#endif /* TEST_FUZZ */
	}

	/* Old reauthentication identity must not be used anymore. In
	 * other words, if no new identities are received, full
	 * authentication will be used on next reauthentication (using
	 * pseudonym identity or permanent identity). */
	FUNC2(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);

	if (attr->encr_data) {
		u8 *decrypted;
		decrypted = FUNC21(data->k_encr, attr->encr_data,
					       attr->encr_data_len, attr->iv,
					       &eattr, 0);
		if (decrypted == NULL) {
			return FUNC3(
				data, id, EAP_AKA_UNABLE_TO_PROCESS_PACKET);
		}
		FUNC5(sm, data, &eattr);
		FUNC22(decrypted);
	}

	if (data->result_ind && attr->result_ind)
		data->use_result_ind = 1;

	if (data->state != FAILURE) {
		FUNC11(data, data->use_result_ind ?
			      RESULT_SUCCESS : SUCCESS);
	}

	data->num_id_req = 0;
	data->num_notification = 0;
	/* RFC 4187 specifies that counter is initialized to one after
	 * fullauth, but initializing it to zero makes it easier to implement
	 * reauth verification. */
	data->counter = 0;
	return FUNC10(data, id);
}