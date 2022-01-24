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
struct eap_sm {int /*<<< orphan*/  scard_ctx; scalar_t__ external_sim; } ;
struct eap_peer_config {int password_len; scalar_t__ password; scalar_t__ pcsc; scalar_t__ external_sim_resp; } ;
struct eap_aka_data {int res_len; int /*<<< orphan*/  autn; int /*<<< orphan*/ * ck; int /*<<< orphan*/ * ik; int /*<<< orphan*/ * res; int /*<<< orphan*/  auts; int /*<<< orphan*/  rand; } ;

/* Variables and functions */
 int EAP_AKA_AUTN_LEN ; 
 int EAP_AKA_CK_LEN ; 
 int EAP_AKA_IK_LEN ; 
 int EAP_AKA_RES_MAX_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (struct eap_sm*,struct eap_aka_data*) ; 
 int FUNC1 (struct eap_sm*,struct eap_aka_data*,struct eap_peer_config*) ; 
 struct eap_peer_config* FUNC2 (struct eap_sm*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct eap_sm *sm, struct eap_aka_data *data)
{
	struct eap_peer_config *conf;

	FUNC8(MSG_DEBUG, "EAP-AKA: UMTS authentication algorithm");

	conf = FUNC2(sm);
	if (conf == NULL)
		return -1;

	if (sm->external_sim) {
		if (conf->external_sim_resp)
			return FUNC1(sm, data, conf);
		else
			return FUNC0(sm, data);
	}

	if (conf->pcsc) {
		return FUNC7(sm->scard_ctx, data->rand,
				       data->autn, data->res, &data->res_len,
				       data->ik, data->ck, data->auts);
	}

#ifdef CONFIG_USIM_SIMULATOR
	if (conf->password) {
		u8 opc[16], k[16], sqn[6];
		const char *pos;
		wpa_printf(MSG_DEBUG, "EAP-AKA: Use internal Milenage "
			   "implementation for UMTS authentication");
		if (conf->password_len < 78) {
			wpa_printf(MSG_DEBUG, "EAP-AKA: invalid Milenage "
				   "password");
			return -1;
		}
		pos = (const char *) conf->password;
		if (hexstr2bin(pos, k, 16))
			return -1;
		pos += 32;
		if (*pos != ':')
			return -1;
		pos++;

		if (hexstr2bin(pos, opc, 16))
			return -1;
		pos += 32;
		if (*pos != ':')
			return -1;
		pos++;

		if (hexstr2bin(pos, sqn, 6))
			return -1;

		return milenage_check(opc, k, sqn, data->rand, data->autn,
				      data->ik, data->ck,
				      data->res, &data->res_len, data->auts);
	}
#endif /* CONFIG_USIM_SIMULATOR */

#ifdef CONFIG_USIM_HARDCODED
	wpa_printf(MSG_DEBUG, "EAP-AKA: Use hardcoded Kc and SRES values for "
		   "testing");

	/* These hardcoded Kc and SRES values are used for testing.
	 * Could consider making them configurable. */
	os_memset(data->res, '2', EAP_AKA_RES_MAX_LEN);
	data->res_len = EAP_AKA_RES_MAX_LEN;
	os_memset(data->ik, '3', EAP_AKA_IK_LEN);
	os_memset(data->ck, '4', EAP_AKA_CK_LEN);
	{
		u8 autn[EAP_AKA_AUTN_LEN];
		os_memset(autn, '1', EAP_AKA_AUTN_LEN);
		if (os_memcmp_const(autn, data->autn, EAP_AKA_AUTN_LEN) != 0) {
			wpa_printf(MSG_WARNING, "EAP-AKA: AUTN did not match "
				   "with expected value");
			return -1;
		}
	}
#if 0
	{
		static int test_resync = 1;
		if (test_resync) {
			/* Test Resynchronization */
			test_resync = 0;
			return -2;
		}
	}
#endif
	return 0;

#else /* CONFIG_USIM_HARDCODED */

	FUNC8(MSG_DEBUG, "EAP-AKA: No UMTS authentication algorithm "
		   "enabled");
	return -1;

#endif /* CONFIG_USIM_HARDCODED */
}