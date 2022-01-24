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
struct milenage_parameters {int /*<<< orphan*/  ki; int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 int EAP_SIM_MAX_CHAL ; 
 struct milenage_parameters* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char*,int,char*,...) ; 
 scalar_t__ FUNC4 (int,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(char *imsi, char *resp, size_t resp_len)
{
	int count, ret;
	char *pos, *rpos, *rend;
	struct milenage_parameters *m;

	resp[0] = '\0';

	pos = FUNC5(imsi, ' ');
	if (!pos)
		return -1;
	*pos++ = '\0';

	rend = resp + resp_len;
	rpos = resp;
	ret = FUNC3(rpos, rend - rpos, "GSM-AUTH-RESP %s", imsi);
	if (FUNC4(rend - rpos, ret))
		return -1;
	rpos += ret;

	m = FUNC0(imsi);
	if (m) {
		u8 _rand[16], sres[4], kc[8];
		for (count = 0; count < EAP_SIM_MAX_CHAL; count++) {
			if (FUNC2(pos, _rand, 16) != 0)
				return -1;
			FUNC1(m->opc, m->ki, _rand, sres, kc);
			*rpos++ = count == 0 ? ' ' : ':';
			rpos += FUNC7(rpos, rend - rpos, kc, 8);
			*rpos++ = ':';
			rpos += FUNC7(rpos, rend - rpos, sres, 4);
			pos += 16 * 2;
			if (*pos != ':')
				break;
			pos++;
		}
		*rpos = '\0';
		return 0;
	}

	FUNC6("No GSM triplets found for %s\n", imsi);
	ret = FUNC3(rpos, rend - rpos, " FAILURE");
	if (FUNC4(rend - rpos, ret))
		return -1;
	rpos += ret;

	return 0;
}