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
struct milenage_parameters {scalar_t__ res_len; struct milenage_parameters* next; int /*<<< orphan*/  sqn; int /*<<< orphan*/  amf; int /*<<< orphan*/  opc; int /*<<< orphan*/  ki; int /*<<< orphan*/  imsi; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EAP_AKA_RES_MAX_LEN ; 
 scalar_t__ EAP_AKA_RES_MIN_LEN ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct milenage_parameters* milenage_db ; 
 int /*<<< orphan*/  FUNC5 (struct milenage_parameters*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (char*) ; 
 struct milenage_parameters* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 char* FUNC10 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC11(const char *fname)
{
	FILE *f;
	char buf[200], *pos, *pos2;
	struct milenage_parameters *m = NULL;
	int line, ret = 0;

	if (fname == NULL)
		return -1;

	f = FUNC3(fname, "r");
	if (f == NULL) {
		FUNC9("Could not open Milenage data file '%s'\n", fname);
		return -1;
	}

	line = 0;
	while (FUNC2(buf, sizeof(buf), f)) {
		line++;

		/* Parse IMSI Ki OPc AMF SQN [RES_len] */
		buf[sizeof(buf) - 1] = '\0';
		if (buf[0] == '#')
			continue;
		pos = buf;
		while (*pos != '\0' && *pos != '\n')
			pos++;
		if (*pos == '\n')
			*pos = '\0';
		pos = buf;
		if (*pos == '\0')
			continue;

		m = FUNC8(sizeof(*m));
		if (m == NULL) {
			ret = -1;
			break;
		}

		/* IMSI */
		pos2 = NULL;
		pos = FUNC10(buf, " ", &pos2);
		if (!pos || FUNC7(pos) >= sizeof(m->imsi)) {
			FUNC9("%s:%d - Invalid IMSI\n", fname, line);
			ret = -1;
			break;
		}
		FUNC6(m->imsi, pos, sizeof(m->imsi));

		/* Ki */
		pos = FUNC10(buf, " ", &pos2);
		if (!pos || FUNC7(pos) != 32 ||
		    FUNC4(pos, m->ki, 16)) {
			FUNC9("%s:%d - Invalid Ki\n", fname, line);
			ret = -1;
			break;
		}

		/* OPc */
		pos = FUNC10(buf, " ", &pos2);
		if (!pos || FUNC7(pos) != 32 ||
		    FUNC4(pos, m->opc, 16)) {
			FUNC9("%s:%d - Invalid OPc\n", fname, line);
			ret = -1;
			break;
		}

		/* AMF */
		pos = FUNC10(buf, " ", &pos2);
		if (!pos || FUNC7(pos) != 4 || FUNC4(pos, m->amf, 2)) {
			FUNC9("%s:%d - Invalid AMF\n", fname, line);
			ret = -1;
			break;
		}

		/* SQN */
		pos = FUNC10(buf, " ", &pos2);
		if (!pos || FUNC7(pos) != 12 ||
		    FUNC4(pos, m->sqn, 6)) {
			FUNC9("%s:%d - Invalid SEQ\n", fname, line);
			ret = -1;
			break;
		}

		pos = FUNC10(buf, " ", &pos2);
		if (pos) {
			m->res_len = FUNC0(pos);
			if (m->res_len &&
			    (m->res_len < EAP_AKA_RES_MIN_LEN ||
			     m->res_len > EAP_AKA_RES_MAX_LEN)) {
				FUNC9("%s:%d - Invalid RES_len\n",
				       fname, line);
				ret = -1;
				break;
			}
		}

		m->next = milenage_db;
		milenage_db = m;
		m = NULL;
	}
	FUNC5(m);

	FUNC1(f);

	return ret;
}