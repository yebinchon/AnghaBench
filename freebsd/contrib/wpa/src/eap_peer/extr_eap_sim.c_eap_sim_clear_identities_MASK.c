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
struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ last_eap_identity_len; int /*<<< orphan*/ * last_eap_identity; scalar_t__ reauth_id_len; int /*<<< orphan*/ * reauth_id; scalar_t__ use_pseudonym; scalar_t__ pseudonym_len; int /*<<< orphan*/ * pseudonym; } ;

/* Variables and functions */
 int CLEAR_EAP_ID ; 
 int CLEAR_PSEUDONYM ; 
 int CLEAR_REAUTH_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm,
				     struct eap_sim_data *data, int id)
{
	if ((id & CLEAR_PSEUDONYM) && data->pseudonym) {
		FUNC2(MSG_DEBUG, "EAP-SIM: forgetting old pseudonym");
		FUNC1(data->pseudonym);
		data->pseudonym = NULL;
		data->pseudonym_len = 0;
		if (data->use_pseudonym)
			FUNC0(sm, NULL, 0);
	}
	if ((id & CLEAR_REAUTH_ID) && data->reauth_id) {
		FUNC2(MSG_DEBUG, "EAP-SIM: forgetting old reauth_id");
		FUNC1(data->reauth_id);
		data->reauth_id = NULL;
		data->reauth_id_len = 0;
	}
	if ((id & CLEAR_EAP_ID) && data->last_eap_identity) {
		FUNC2(MSG_DEBUG, "EAP-SIM: forgetting old eap_id");
		FUNC1(data->last_eap_identity);
		data->last_eap_identity = NULL;
		data->last_eap_identity_len = 0;
	}
}