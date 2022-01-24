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
struct gsm_triplet {struct gsm_triplet* next; int /*<<< orphan*/  _rand; int /*<<< orphan*/  sres; int /*<<< orphan*/  kc; int /*<<< orphan*/  imsi; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 struct gsm_triplet* gsm_db ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gsm_triplet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (char*) ; 
 struct gsm_triplet* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 char* FUNC9 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC10(const char *fname)
{
	FILE *f;
	char buf[200], *pos, *pos2;
	struct gsm_triplet *g = NULL;
	int line, ret = 0;

	if (fname == NULL)
		return -1;

	f = FUNC2(fname, "r");
	if (f == NULL) {
		FUNC8("Could not open GSM triplet data file '%s'\n", fname);
		return -1;
	}

	line = 0;
	while (FUNC1(buf, sizeof(buf), f)) {
		line++;

		/* Parse IMSI:Kc:SRES:RAND */
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

		g = FUNC7(sizeof(*g));
		if (g == NULL) {
			ret = -1;
			break;
		}

		/* IMSI */
		pos2 = NULL;
		pos = FUNC9(buf, ":", &pos2);
		if (!pos || FUNC6(pos) >= sizeof(g->imsi)) {
			FUNC8("%s:%d - Invalid IMSI\n", fname, line);
			ret = -1;
			break;
		}
		FUNC5(g->imsi, pos, sizeof(g->imsi));

		/* Kc */
		pos = FUNC9(buf, ":", &pos2);
		if (!pos || FUNC6(pos) != 16 || FUNC3(pos, g->kc, 8)) {
			FUNC8("%s:%d - Invalid Kc\n", fname, line);
			ret = -1;
			break;
		}

		/* SRES */
		pos = FUNC9(buf, ":", &pos2);
		if (!pos || FUNC6(pos) != 8 ||
		    FUNC3(pos, g->sres, 4)) {
			FUNC8("%s:%d - Invalid SRES\n", fname, line);
			ret = -1;
			break;
		}

		/* RAND */
		pos = FUNC9(buf, ":", &pos2);
		if (!pos || FUNC6(pos) != 32 ||
		    FUNC3(pos, g->_rand, 16)) {
			FUNC8("%s:%d - Invalid RAND\n", fname, line);
			ret = -1;
			break;
		}

		g->next = gsm_db;
		gsm_db = g;
		g = NULL;
	}
	FUNC4(g);

	FUNC0(f);

	return ret;
}