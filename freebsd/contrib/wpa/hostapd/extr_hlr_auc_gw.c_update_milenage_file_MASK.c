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
struct milenage_parameters {char* imsi; int /*<<< orphan*/  sqn; int /*<<< orphan*/  amf; int /*<<< orphan*/  opc; int /*<<< orphan*/  ki; struct milenage_parameters* next; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 struct milenage_parameters* milenage_db ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(const char *fname)
{
	FILE *f, *f2;
	char name[500], buf[500], *pos;
	char *end = buf + sizeof(buf);
	struct milenage_parameters *m;
	size_t imsi_len;

	f = FUNC2(fname, "r");
	if (f == NULL) {
		FUNC5("Could not open Milenage data file '%s'\n", fname);
		return;
	}

	FUNC7(name, sizeof(name), "%s.new", fname);
	f2 = FUNC2(name, "w");
	if (f2 == NULL) {
		FUNC5("Could not write Milenage data file '%s'\n", name);
		FUNC0(f);
		return;
	}

	while (FUNC1(buf, sizeof(buf), f)) {
		/* IMSI Ki OPc AMF SQN */
		buf[sizeof(buf) - 1] = '\0';

		pos = FUNC8(buf, ' ');
		if (buf[0] == '#' || pos == NULL || pos - buf >= 20)
			goto no_update;

		imsi_len = pos - buf;

		for (m = milenage_db; m; m = m->next) {
			if (FUNC9(buf, m->imsi, imsi_len) == 0 &&
			    m->imsi[imsi_len] == '\0')
				break;
		}

		if (!m)
			goto no_update;

		pos = buf;
		pos += FUNC7(pos, end - pos, "%s ", m->imsi);
		pos += FUNC10(pos, end - pos, m->ki, 16);
		*pos++ = ' ';
		pos += FUNC10(pos, end - pos, m->opc, 16);
		*pos++ = ' ';
		pos += FUNC10(pos, end - pos, m->amf, 2);
		*pos++ = ' ';
		pos += FUNC10(pos, end - pos, m->sqn, 6);
		*pos++ = '\n';

	no_update:
		FUNC3(f2, "%s", buf);
	}

	FUNC0(f2);
	FUNC0(f);

	FUNC7(name, sizeof(name), "%s.bak", fname);
	if (FUNC6(fname, name) < 0) {
		FUNC4("rename");
		return;
	}

	FUNC7(name, sizeof(name), "%s.new", fname);
	if (FUNC6(name, fname) < 0) {
		FUNC4("rename");
		return;
	}

}