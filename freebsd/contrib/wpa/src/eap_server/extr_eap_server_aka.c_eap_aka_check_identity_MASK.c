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
struct eap_aka_data {scalar_t__ eap_method; int /*<<< orphan*/  permanent; } ;

/* Variables and functions */
 char EAP_AKA_PRIME_PSEUDONYM_PREFIX ; 
 char EAP_AKA_PSEUDONYM_PREFIX ; 
 scalar_t__ EAP_TYPE_AKA ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_aka_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_aka_data*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
				   struct eap_aka_data *data)
{
	char *username;

	/* Check if we already know the identity from EAP-Response/Identity */

	username = FUNC5(sm->identity, sm->identity_len);
	if (username == NULL)
		return;

	if (FUNC0(sm, data, username) > 0) {
		FUNC3(username);
		/*
		 * Since re-auth username was recognized, skip AKA/Identity
		 * exchange.
		 */
		return;
	}

	if ((data->eap_method == EAP_TYPE_AKA_PRIME &&
	     username[0] == EAP_AKA_PRIME_PSEUDONYM_PREFIX) ||
	    (data->eap_method == EAP_TYPE_AKA &&
	     username[0] == EAP_AKA_PSEUDONYM_PREFIX)) {
		const char *permanent;
		FUNC6(MSG_DEBUG, "EAP-AKA: Pseudonym username '%s'",
			   username);
		permanent = FUNC2(
			sm->eap_sim_db_priv, username);
		if (permanent == NULL) {
			FUNC3(username);
			FUNC6(MSG_DEBUG, "EAP-AKA: Unknown pseudonym "
				   "identity - request permanent identity");
			/* Remain in IDENTITY state for another round */
			return;
		}
		FUNC4(data->permanent, permanent,
			   sizeof(data->permanent));
		/*
		 * Since pseudonym username was recognized, skip AKA/Identity
		 * exchange.
		 */
		FUNC1(sm, data);
	}

	FUNC3(username);
}