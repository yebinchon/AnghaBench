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
struct eap_sm {scalar_t__ method_pending; size_t identity_len; char* identity; int /*<<< orphan*/  imsi; int /*<<< orphan*/  eap_sim_db_priv; } ;
struct eap_aka_data {scalar_t__* permanent; scalar_t__ eap_method; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  mk; int /*<<< orphan*/  ck; int /*<<< orphan*/  ik; int /*<<< orphan*/  k_re; int /*<<< orphan*/  notification; scalar_t__ counter; int /*<<< orphan*/ * reauth; int /*<<< orphan*/  network_name_len; int /*<<< orphan*/  network_name; int /*<<< orphan*/  autn; int /*<<< orphan*/  res_len; int /*<<< orphan*/  res; int /*<<< orphan*/  rand; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHALLENGE ; 
 scalar_t__ EAP_AKA_PERMANENT_PREFIX ; 
 scalar_t__ EAP_AKA_PRIME_PERMANENT_PREFIX ; 
 int EAP_SIM_DB_PENDING ; 
 int /*<<< orphan*/  EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 scalar_t__ METHOD_PENDING_NONE ; 
 scalar_t__ METHOD_PENDING_WAIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm, struct eap_aka_data *data)
{
	size_t identity_len;
	int res;

	res = FUNC4(sm->eap_sim_db_priv, data->permanent,
				      data->rand, data->autn, data->ik,
				      data->ck, data->res, &data->res_len, sm);
	if (res == EAP_SIM_DB_PENDING) {
		FUNC8(MSG_DEBUG, "EAP-AKA: AKA authentication data "
			   "not yet available - pending request");
		sm->method_pending = METHOD_PENDING_WAIT;
		return;
	}

	if (data->permanent[0] == EAP_AKA_PERMANENT_PREFIX ||
	    data->permanent[0] == EAP_AKA_PRIME_PERMANENT_PREFIX)
		FUNC6(sm->imsi, &data->permanent[1], sizeof(sm->imsi));

#ifdef EAP_SERVER_AKA_PRIME
	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		/* Note: AUTN = (SQN ^ AK) || AMF || MAC which gives us the
		 * needed 6-octet SQN ^AK for CK',IK' derivation */
		eap_aka_prime_derive_ck_ik_prime(data->ck, data->ik,
						 data->autn,
						 data->network_name,
						 data->network_name_len);
	}
#endif /* EAP_SERVER_AKA_PRIME */

	data->reauth = NULL;
	data->counter = 0; /* reset re-auth counter since this is full auth */

	if (res != 0) {
		FUNC8(MSG_INFO, "EAP-AKA: Failed to get AKA "
			   "authentication data for the peer");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC3(data, NOTIFICATION);
		return;
	}
	if (sm->method_pending == METHOD_PENDING_WAIT) {
		FUNC8(MSG_DEBUG, "EAP-AKA: AKA authentication data "
			   "available - abort pending wait");
		sm->method_pending = METHOD_PENDING_NONE;
	}

	identity_len = sm->identity_len;
	while (identity_len > 0 && sm->identity[identity_len - 1] == '\0') {
		FUNC8(MSG_DEBUG, "EAP-AKA: Workaround - drop last null "
			   "character from identity");
		identity_len--;
	}
	FUNC7(MSG_DEBUG, "EAP-AKA: Identity for MK derivation",
			  sm->identity, identity_len);

	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		FUNC2(sm->identity, identity_len, data->ik,
					  data->ck, data->k_encr, data->k_aut,
					  data->k_re, data->msk, data->emsk);
	} else {
		FUNC0(sm->identity, identity_len, data->ik,
				  data->ck, data->mk);
		FUNC5(data->mk, data->k_encr, data->k_aut,
				    data->msk, data->emsk);
	}

	FUNC3(data, CHALLENGE);
}