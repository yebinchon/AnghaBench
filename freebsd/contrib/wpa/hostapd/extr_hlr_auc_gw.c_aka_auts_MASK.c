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
typedef  int u8 ;
struct milenage_parameters {int /*<<< orphan*/  sqn; int /*<<< orphan*/  ki; int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 int EAP_AKA_AUTS_LEN ; 
 int EAP_AKA_RAND_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct milenage_parameters*) ; 
 struct milenage_parameters* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int sqn_changes ; 
 scalar_t__ stdout_debug ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static int FUNC7(char *imsi, char *resp, size_t resp_len)
{
	char *auts, *__rand;
	u8 _auts[EAP_AKA_AUTS_LEN], _rand[EAP_AKA_RAND_LEN], sqn[6];
	struct milenage_parameters *m;

	resp[0] = '\0';

	/* AKA-AUTS <IMSI> <AUTS> <RAND> */

	auts = FUNC6(imsi, ' ');
	if (auts == NULL)
		return -1;
	*auts++ = '\0';

	__rand = FUNC6(auts, ' ');
	if (__rand == NULL)
		return -1;
	*__rand++ = '\0';

	if (stdout_debug) {
		FUNC5("AKA-AUTS: IMSI=%s AUTS=%s RAND=%s\n",
		       imsi, auts, __rand);
	}
	if (FUNC2(auts, _auts, EAP_AKA_AUTS_LEN) ||
	    FUNC2(__rand, _rand, EAP_AKA_RAND_LEN)) {
		FUNC5("Could not parse AUTS/RAND\n");
		return -1;
	}

	m = FUNC1(imsi);
	if (m == NULL) {
		FUNC5("Unknown IMSI: %s\n", imsi);
		return -1;
	}

	if (FUNC4(m->opc, m->ki, _rand, _auts, sqn)) {
		FUNC5("AKA-AUTS: Incorrect MAC-S\n");
	} else {
		FUNC3(m->sqn, sqn, 6);
		if (stdout_debug) {
			FUNC5("AKA-AUTS: Re-synchronized: "
			       "SQN=%02x%02x%02x%02x%02x%02x\n",
			       sqn[0], sqn[1], sqn[2], sqn[3], sqn[4], sqn[5]);
		}
#ifdef CONFIG_SQLITE
		db_update_milenage_sqn(m);
#endif /* CONFIG_SQLITE */
		sqn_changes = 1;
	}

	return 0;
}