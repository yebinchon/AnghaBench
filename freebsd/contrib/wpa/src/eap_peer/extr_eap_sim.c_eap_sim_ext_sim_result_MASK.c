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
struct eap_sim_data {size_t num_chal; int /*<<< orphan*/ * sres; int /*<<< orphan*/ * kc; int /*<<< orphan*/ * rand; } ;
struct eap_peer_config {char* external_sim_resp; } ;

/* Variables and functions */
 int EAP_SIM_KC_LEN ; 
 int EAP_SIM_SRES_LEN ; 
 int /*<<< orphan*/  GSM_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm, struct eap_sim_data *data,
				  struct eap_peer_config *conf)
{
	char *resp, *pos;
	size_t i;

	FUNC5(MSG_DEBUG,
		   "EAP-SIM: Use result from external SIM processing");

	resp = conf->external_sim_resp;
	conf->external_sim_resp = NULL;

	if (FUNC2(resp, "GSM-AUTH:", 9) != 0) {
		FUNC5(MSG_DEBUG, "EAP-SIM: Unrecognized external SIM processing response");
		FUNC1(resp);
		return -1;
	}

	pos = resp + 9;
	for (i = 0; i < data->num_chal; i++) {
		FUNC3(MSG_DEBUG, "EAP-SIM: RAND",
			    data->rand[i], GSM_RAND_LEN);

		if (FUNC0(pos, data->kc[i], EAP_SIM_KC_LEN) < 0)
			goto invalid;
		FUNC4(MSG_DEBUG, "EAP-SIM: Kc",
				data->kc[i], EAP_SIM_KC_LEN);
		pos += EAP_SIM_KC_LEN * 2;
		if (*pos != ':')
			goto invalid;
		pos++;

		if (FUNC0(pos, data->sres[i], EAP_SIM_SRES_LEN) < 0)
			goto invalid;
		FUNC4(MSG_DEBUG, "EAP-SIM: SRES",
				data->sres[i], EAP_SIM_SRES_LEN);
		pos += EAP_SIM_SRES_LEN * 2;
		if (i + 1 < data->num_chal) {
			if (*pos != ':')
				goto invalid;
			pos++;
		}
	}

	FUNC1(resp);
	return 0;

invalid:
	FUNC5(MSG_DEBUG, "EAP-SIM: Invalid external SIM processing GSM-AUTH response");
	FUNC1(resp);
	return -1;
}