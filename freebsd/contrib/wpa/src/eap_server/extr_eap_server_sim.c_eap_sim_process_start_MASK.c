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
typedef  int /*<<< orphan*/  ver_list ;
typedef  char u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {char* identity; size_t identity_len; char* imsi; int /*<<< orphan*/  method_pending; int /*<<< orphan*/  eap_sim_db_priv; } ;
struct eap_sim_data {scalar_t__ start_round; char* permanent; char* mk; int num_chal; char* nonce_mt; int /*<<< orphan*/  notification; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  k_encr; scalar_t__ kc; scalar_t__ sres; scalar_t__ rand; TYPE_1__* reauth; scalar_t__ counter; } ;
struct eap_sim_attrs {size_t identity_len; int /*<<< orphan*/  selected_version; int /*<<< orphan*/ * nonce_mt; int /*<<< orphan*/ * identity; } ;
struct TYPE_2__ {char* permanent; int /*<<< orphan*/ * mk; scalar_t__ counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHALLENGE ; 
 int EAP_SIM_DB_PENDING ; 
 int /*<<< orphan*/  EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 int /*<<< orphan*/  EAP_SIM_MAX_CHAL ; 
 size_t EAP_SIM_MK_LEN ; 
 size_t EAP_SIM_NONCE_MT_LEN ; 
 char EAP_SIM_PERMANENT_PREFIX ; 
 char EAP_SIM_PSEUDONYM_PREFIX ; 
 char EAP_SIM_REAUTH_ID_PREFIX ; 
 int /*<<< orphan*/  EAP_SIM_VERSION ; 
 int /*<<< orphan*/  METHOD_PENDING_WAIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  REAUTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*,struct eap_sm*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 char* FUNC12 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC15(struct eap_sm *sm,
				  struct eap_sim_data *data,
				  struct wpabuf *respData,
				  struct eap_sim_attrs *attr)
{
	size_t identity_len;
	u8 ver_list[2];
	u8 *new_identity;
	char *username;

	FUNC14(MSG_DEBUG, "EAP-SIM: Receive start response");

	if (data->start_round == 0) {
		/*
		 * Special case for AT_COUNTER_TOO_SMALL recovery - no identity
		 * was requested since we already know it.
		 */
		goto skip_id_update;
	}

	/*
	 * We always request identity in SIM/Start, so the peer is required to
	 * have replied with one.
	 */
	if (!attr->identity || attr->identity_len == 0) {
		FUNC14(MSG_DEBUG, "EAP-SIM: Peer did not provide any "
			   "identity");
		goto failed;
	}

	new_identity = FUNC9(attr->identity_len);
	if (new_identity == NULL)
		goto failed;
	FUNC8(sm->identity);
	sm->identity = new_identity;
	FUNC10(sm->identity, attr->identity, attr->identity_len);
	sm->identity_len = attr->identity_len;

	FUNC13(MSG_DEBUG, "EAP-SIM: Identity",
			  sm->identity, sm->identity_len);
	username = FUNC12(sm->identity, sm->identity_len);
	if (username == NULL)
		goto failed;

	if (username[0] == EAP_SIM_REAUTH_ID_PREFIX) {
		FUNC14(MSG_DEBUG, "EAP-SIM: Reauth username '%s'",
			   username);
		data->reauth = FUNC3(
			sm->eap_sim_db_priv, username);
		FUNC8(username);
		if (data->reauth == NULL) {
			FUNC14(MSG_DEBUG, "EAP-SIM: Unknown reauth "
				   "identity - request full auth identity");
			/* Remain in START state for another round */
			return;
		}
		FUNC14(MSG_DEBUG, "EAP-SIM: Using fast re-authentication");
		FUNC11(data->permanent, data->reauth->permanent,
			   sizeof(data->permanent));
		data->counter = data->reauth->counter;
		FUNC10(data->mk, data->reauth->mk, EAP_SIM_MK_LEN);
		FUNC6(data, REAUTH);
		return;
	}

	if (username[0] == EAP_SIM_PSEUDONYM_PREFIX) {
		const char *permanent;
		FUNC14(MSG_DEBUG, "EAP-SIM: Pseudonym username '%s'",
			   username);
		permanent = FUNC2(
			sm->eap_sim_db_priv, username);
		FUNC8(username);
		if (permanent == NULL) {
			FUNC14(MSG_DEBUG, "EAP-SIM: Unknown pseudonym "
				   "identity - request permanent identity");
			/* Remain in START state for another round */
			return;
		}
		FUNC11(data->permanent, permanent,
			   sizeof(data->permanent));
	} else if (username[0] == EAP_SIM_PERMANENT_PREFIX) {
		FUNC14(MSG_DEBUG, "EAP-SIM: Permanent username '%s'",
			   username);
		FUNC11(data->permanent, username, sizeof(data->permanent));
		FUNC8(username);
	} else {
		FUNC14(MSG_DEBUG, "EAP-SIM: Unrecognized username '%s'",
			   username);
		FUNC8(username);
		goto failed;
	}

skip_id_update:
	/* Full authentication */

	if (attr->nonce_mt == NULL || attr->selected_version < 0) {
		FUNC14(MSG_DEBUG, "EAP-SIM: Start/Response missing "
			   "required attributes");
		goto failed;
	}

	if (!FUNC7(data, attr->selected_version)) {
		FUNC14(MSG_DEBUG, "EAP-SIM: Peer selected unsupported "
			   "version %d", attr->selected_version);
		goto failed;
	}

	data->counter = 0; /* reset re-auth counter since this is full auth */
	data->reauth = NULL;

	data->num_chal = FUNC1(
		sm->eap_sim_db_priv, data->permanent, EAP_SIM_MAX_CHAL,
		(u8 *) data->rand, (u8 *) data->kc, (u8 *) data->sres, sm);
	if (data->num_chal == EAP_SIM_DB_PENDING) {
		FUNC14(MSG_DEBUG, "EAP-SIM: GSM authentication triplets "
			   "not yet available - pending request");
		sm->method_pending = METHOD_PENDING_WAIT;
		return;
	}
	if (data->num_chal < 2) {
		FUNC14(MSG_INFO, "EAP-SIM: Failed to get GSM "
			   "authentication triplets for the peer");
		goto failed;
	}

	if (data->permanent[0] == EAP_SIM_PERMANENT_PREFIX)
		FUNC11(sm->imsi, &data->permanent[1], sizeof(sm->imsi));

	identity_len = sm->identity_len;
	while (identity_len > 0 && sm->identity[identity_len - 1] == '\0') {
		FUNC14(MSG_DEBUG, "EAP-SIM: Workaround - drop last null "
			   "character from identity");
		identity_len--;
	}
	FUNC13(MSG_DEBUG, "EAP-SIM: Identity for MK derivation",
			  sm->identity, identity_len);

	FUNC10(data->nonce_mt, attr->nonce_mt, EAP_SIM_NONCE_MT_LEN);
	FUNC0(ver_list, EAP_SIM_VERSION);
	FUNC5(sm->identity, identity_len, attr->nonce_mt,
			  attr->selected_version, ver_list, sizeof(ver_list),
			  data->num_chal, (const u8 *) data->kc, data->mk);
	FUNC4(data->mk, data->k_encr, data->k_aut, data->msk,
			    data->emsk);

	FUNC6(data, CHALLENGE);
	return;

failed:
	data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
	FUNC6(data, NOTIFICATION);
}