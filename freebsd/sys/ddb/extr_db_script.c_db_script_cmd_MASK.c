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
struct ddb_script {int /*<<< orphan*/  ds_script; } ;
typedef  int /*<<< orphan*/  scriptname ;
typedef  int /*<<< orphan*/  db_expr_t ;

/* Variables and functions */
 int DB_MAXSCRIPTNAME ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 
 struct ddb_script* FUNC3 (char*) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  db_tok_string ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*) ; 
 int tEOL ; 
 int tEQ ; 
 int tIDENT ; 

void
FUNC8(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
	char *buf, scriptname[DB_MAXSCRIPTNAME];
	struct ddb_script *dsp;
	int error, t;

	t = FUNC2();
	if (t != tIDENT) {
		FUNC1("usage: script scriptname=script\n");
		FUNC5();
		return;
	}

	if (FUNC6(scriptname, db_tok_string, sizeof(scriptname)) >=
	    sizeof(scriptname)) {
		FUNC1("scriptname too long\n");
		FUNC5();
		return;
	}

	t = FUNC2();
	if (t == tEOL) {
		dsp = FUNC3(scriptname);
		if (dsp == NULL) {
			FUNC1("script '%s' not found\n", scriptname);
			FUNC5();
			return;
		}
		FUNC1("%s=%s\n", scriptname, dsp->ds_script);
	} else if (t == tEQ) {
		buf = FUNC0();
		if (buf[FUNC7(buf)-1] == '\n')
			buf[FUNC7(buf)-1] = '\0';
		error = FUNC4(scriptname, buf);
		if (error != 0)
			FUNC1("Error: %d\n", error);
	} else
		FUNC1("?\n");
	FUNC5();
}