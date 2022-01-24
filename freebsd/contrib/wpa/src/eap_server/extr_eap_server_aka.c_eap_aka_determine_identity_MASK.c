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
struct eap_sm {int /*<<< orphan*/  eap_sim_db_priv; int /*<<< orphan*/  identity_len; int /*<<< orphan*/  identity; } ;
struct eap_aka_data {scalar_t__ eap_method; int identity_round; void* notification; int /*<<< orphan*/  permanent; } ;

/* Variables and functions */
 char EAP_AKA_PERMANENT_PREFIX ; 
 char EAP_AKA_PRIME_PERMANENT_PREFIX ; 
 char EAP_AKA_PRIME_PSEUDONYM_PREFIX ; 
 char EAP_AKA_PRIME_REAUTH_ID_PREFIX ; 
 char EAP_AKA_PSEUDONYM_PREFIX ; 
 char EAP_AKA_REAUTH_ID_PREFIX ; 
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 scalar_t__ EAP_TYPE_AKA ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_aka_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_aka_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm,
				       struct eap_aka_data *data)
{
	char *username;

	FUNC7(MSG_DEBUG, "EAP-AKA: Identity",
			  sm->identity, sm->identity_len);

	username = FUNC6(sm->identity, sm->identity_len);
	if (username == NULL) {
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC2(data, NOTIFICATION);
		return;
	}

	if (FUNC0(sm, data, username) > 0) {
		FUNC4(username);
		return;
	}

	if (((data->eap_method == EAP_TYPE_AKA_PRIME &&
	      username[0] == EAP_AKA_PRIME_REAUTH_ID_PREFIX) ||
	     (data->eap_method == EAP_TYPE_AKA &&
	      username[0] == EAP_AKA_REAUTH_ID_PREFIX)) &&
	    data->identity_round == 1) {
		/* Remain in IDENTITY state for another round to request full
		 * auth identity since we did not recognize reauth id */
		FUNC4(username);
		return;
	}

	if ((data->eap_method == EAP_TYPE_AKA_PRIME &&
	     username[0] == EAP_AKA_PRIME_PSEUDONYM_PREFIX) ||
	    (data->eap_method == EAP_TYPE_AKA &&
	     username[0] == EAP_AKA_PSEUDONYM_PREFIX)) {
		const char *permanent;
		FUNC8(MSG_DEBUG, "EAP-AKA: Pseudonym username '%s'",
			   username);
		permanent = FUNC3(
			sm->eap_sim_db_priv, username);
		FUNC4(username);
		if (permanent == NULL) {
			FUNC8(MSG_DEBUG, "EAP-AKA: Unknown pseudonym "
				   "identity - request permanent identity");
			/* Remain in IDENTITY state for another round */
			return;
		}
		FUNC5(data->permanent, permanent,
			   sizeof(data->permanent));
	} else if ((data->eap_method == EAP_TYPE_AKA_PRIME &&
		    username[0] == EAP_AKA_PRIME_PERMANENT_PREFIX) ||
		   (data->eap_method == EAP_TYPE_AKA &&
		    username[0] == EAP_AKA_PERMANENT_PREFIX)) {
		FUNC8(MSG_DEBUG, "EAP-AKA: Permanent username '%s'",
			   username);
		FUNC5(data->permanent, username, sizeof(data->permanent));
		FUNC4(username);
	} else {
		FUNC8(MSG_DEBUG, "EAP-AKA: Unrecognized username '%s'",
			   username);
		FUNC4(username);
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC2(data, NOTIFICATION);
		return;
	}

	FUNC1(sm, data);
}