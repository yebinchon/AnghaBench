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
struct eap_peer_config {char* external_sim_resp; } ;
struct eap_aka_data {int res_len; int /*<<< orphan*/  res; int /*<<< orphan*/  ck; int /*<<< orphan*/  ik; int /*<<< orphan*/  rand; int /*<<< orphan*/  auts; } ;

/* Variables and functions */
 int EAP_AKA_AUTS_LEN ; 
 int EAP_AKA_CK_LEN ; 
 int EAP_AKA_IK_LEN ; 
 int /*<<< orphan*/  EAP_AKA_RAND_LEN ; 
 int EAP_AKA_RES_MAX_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct eap_sm *sm, struct eap_aka_data *data,
				  struct eap_peer_config *conf)
{
	char *resp, *pos;

	FUNC6(MSG_DEBUG,
		   "EAP-AKA: Use result from external USIM processing");

	resp = conf->external_sim_resp;
	conf->external_sim_resp = NULL;

	if (FUNC3(resp, "UMTS-AUTS:", 10) == 0) {
		pos = resp + 10;
		if (FUNC0(pos, data->auts, EAP_AKA_AUTS_LEN) < 0)
			goto invalid;
		FUNC5(MSG_DEBUG, "EAP-AKA: AUTS", data->auts,
				EAP_AKA_AUTS_LEN);
		FUNC1(resp);
		return -2;
	}

	if (FUNC3(resp, "UMTS-AUTH:", 10) != 0) {
		FUNC6(MSG_DEBUG, "EAP-AKA: Unrecognized external USIM processing response");
		FUNC1(resp);
		return -1;
	}

	pos = resp + 10;
	FUNC4(MSG_DEBUG, "EAP-AKA: RAND", data->rand, EAP_AKA_RAND_LEN);

	if (FUNC0(pos, data->ik, EAP_AKA_IK_LEN) < 0)
		goto invalid;
	FUNC5(MSG_DEBUG, "EAP-AKA: IK", data->ik, EAP_AKA_IK_LEN);
	pos += EAP_AKA_IK_LEN * 2;
	if (*pos != ':')
		goto invalid;
	pos++;

	if (FUNC0(pos, data->ck, EAP_AKA_CK_LEN) < 0)
		goto invalid;
	FUNC5(MSG_DEBUG, "EAP-AKA: CK", data->ck, EAP_AKA_CK_LEN);
	pos += EAP_AKA_CK_LEN * 2;
	if (*pos != ':')
		goto invalid;
	pos++;

	data->res_len = FUNC2(pos) / 2;
	if (data->res_len > EAP_AKA_RES_MAX_LEN) {
		data->res_len = 0;
		goto invalid;
	}
	if (FUNC0(pos, data->res, data->res_len) < 0)
		goto invalid;
	FUNC5(MSG_DEBUG, "EAP-AKA: RES", data->res, data->res_len);

	FUNC1(resp);
	return 0;

invalid:
	FUNC6(MSG_DEBUG, "EAP-AKA: Invalid external USIM processing UMTS-AUTH response");
	FUNC1(resp);
	return -1;
}