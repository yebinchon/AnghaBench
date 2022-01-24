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
struct milenage_parameters {int* sqn; int res_len; int /*<<< orphan*/  ki; int /*<<< orphan*/  amf; int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 int EAP_AKA_AUTN_LEN ; 
 int EAP_AKA_CK_LEN ; 
 int EAP_AKA_IK_LEN ; 
 int EAP_AKA_RAND_LEN ; 
 int EAP_AKA_RES_MAX_LEN ; 
 int EAP_AKA_RES_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct milenage_parameters*) ; 
 struct milenage_parameters* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (char*,int,char*,...) ; 
 int sqn_changes ; 
 scalar_t__ stdout_debug ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC9(char *imsi, char *resp, size_t resp_len)
{
	/* AKA-RESP-AUTH <IMSI> <RAND> <AUTN> <IK> <CK> <RES> */
	char *pos, *end;
	u8 _rand[EAP_AKA_RAND_LEN];
	u8 autn[EAP_AKA_AUTN_LEN];
	u8 ik[EAP_AKA_IK_LEN];
	u8 ck[EAP_AKA_CK_LEN];
	u8 res[EAP_AKA_RES_MAX_LEN];
	size_t res_len;
	int ret;
	struct milenage_parameters *m;
	int failed = 0;

	m = FUNC1(imsi);
	if (m) {
		if (FUNC6(_rand, EAP_AKA_RAND_LEN) < 0)
			return -1;
		res_len = EAP_AKA_RES_MAX_LEN;
		FUNC2(m->sqn);
#ifdef CONFIG_SQLITE
		db_update_milenage_sqn(m);
#endif /* CONFIG_SQLITE */
		sqn_changes = 1;
		if (stdout_debug) {
			FUNC5("AKA: Milenage with SQN=%02x%02x%02x%02x%02x%02x\n",
			       m->sqn[0], m->sqn[1], m->sqn[2],
			       m->sqn[3], m->sqn[4], m->sqn[5]);
		}
		FUNC4(m->opc, m->amf, m->ki, m->sqn, _rand,
				  autn, ik, ck, res, &res_len);
		if (m->res_len >= EAP_AKA_RES_MIN_LEN &&
		    m->res_len <= EAP_AKA_RES_MAX_LEN &&
		    m->res_len < res_len)
			res_len = m->res_len;
	} else {
		FUNC5("Unknown IMSI: %s\n", imsi);
#ifdef AKA_USE_FIXED_TEST_VALUES
		printf("Using fixed test values for AKA\n");
		memset(_rand, '0', EAP_AKA_RAND_LEN);
		memset(autn, '1', EAP_AKA_AUTN_LEN);
		memset(ik, '3', EAP_AKA_IK_LEN);
		memset(ck, '4', EAP_AKA_CK_LEN);
		memset(res, '2', EAP_AKA_RES_MAX_LEN);
		res_len = EAP_AKA_RES_MAX_LEN;
#else /* AKA_USE_FIXED_TEST_VALUES */
		failed = 1;
#endif /* AKA_USE_FIXED_TEST_VALUES */
	}

	pos = resp;
	end = resp + resp_len;
	ret = FUNC7(pos, end - pos, "AKA-RESP-AUTH %s ", imsi);
	if (ret < 0 || ret >= end - pos)
		return -1;
	pos += ret;
	if (failed) {
		ret = FUNC7(pos, end - pos, "FAILURE");
		if (ret < 0 || ret >= end - pos)
			return -1;
		pos += ret;
		return 0;
	}
	pos += FUNC8(pos, end - pos, _rand, EAP_AKA_RAND_LEN);
	*pos++ = ' ';
	pos += FUNC8(pos, end - pos, autn, EAP_AKA_AUTN_LEN);
	*pos++ = ' ';
	pos += FUNC8(pos, end - pos, ik, EAP_AKA_IK_LEN);
	*pos++ = ' ';
	pos += FUNC8(pos, end - pos, ck, EAP_AKA_CK_LEN);
	*pos++ = ' ';
	pos += FUNC8(pos, end - pos, res, res_len);

	return 0;
}