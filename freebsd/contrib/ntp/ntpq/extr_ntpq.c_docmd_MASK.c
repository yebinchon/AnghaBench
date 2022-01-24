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
struct xcmd {int* arg; int /*<<< orphan*/  (* handler ) (struct parse*,int /*<<< orphan*/ *) ;} ;
struct parse {char* keyword; scalar_t__ nargs; int /*<<< orphan*/ * argval; } ;

/* Variables and functions */
 int MAXARGS ; 
 int NO ; 
 int OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtins ; 
 int /*<<< orphan*/ * current_output ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xcmd**) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  interrupt_buf ; 
 int jump ; 
 int /*<<< orphan*/  opcmds ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct xcmd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC10 (struct parse*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct parse*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char**,int*) ; 

__attribute__((used)) static void
FUNC13(
	const char *cmdline
	)
{
	char *tokens[1+MAXARGS+2];
	struct parse pcmd;
	int ntok;
	static int i;
	struct xcmd *xcmd;

	/*
	 * Tokenize the command line.  If nothing on it, return.
	 */
	FUNC12(cmdline, tokens, &ntok);
	if (ntok == 0)
	    return;

	/*
	 * Find the appropriate command description.
	 */
	i = FUNC3(tokens[0], builtins, opcmds, &xcmd);
	if (i == 0) {
		(void) FUNC5(stderr, "***Command `%s' unknown\n",
			       tokens[0]);
		return;
	} else if (i >= 2) {
		(void) FUNC5(stderr, "***Command `%s' ambiguous\n",
			       tokens[0]);
		return;
	}

	/* Warn about ignored extra args */
	for (i = MAXARGS + 1; i < ntok ; ++i) {
		FUNC5(stderr, "***Extra arg `%s' ignored\n", tokens[i]);
	}

	/*
	 * Save the keyword, then walk through the arguments, interpreting
	 * as we go.
	 */
	pcmd.keyword = tokens[0];
	pcmd.nargs = 0;
	for (i = 0; i < MAXARGS && xcmd->arg[i] != NO; i++) {
		if ((i+1) >= ntok) {
			if (!(xcmd->arg[i] & OPT)) {
				FUNC9(xcmd, stderr);
				return;
			}
			break;
		}
		if ((xcmd->arg[i] & OPT) && (*tokens[i+1] == '>'))
			break;
		if (!FUNC7(tokens[i+1], (int)xcmd->arg[i], &pcmd.argval[i]))
			return;
		pcmd.nargs++;
	}

	i++;
	if (i < ntok && *tokens[i] == '>') {
		char *fname;

		if (*(tokens[i]+1) != '\0')
			fname = tokens[i]+1;
		else if ((i+1) < ntok)
			fname = tokens[i+1];
		else {
			(void) FUNC5(stderr, "***No file for redirect\n");
			return;
		}

		current_output = FUNC4(fname, "w");
		if (current_output == NULL) {
			(void) FUNC5(stderr, "***Error opening %s: ", fname);
			FUNC8("");
			return;
		}
	} else {
		current_output = stdout;
	}

	if (interactive) {
		if ( ! FUNC0(interrupt_buf)) {
			jump = 1;
			(xcmd->handler)(&pcmd, current_output);
			jump = 0;
		} else {
			FUNC2(current_output);
			FUNC6("\n >>> command aborted <<<\n", stderr);
			FUNC2(stderr);
		}

	} else {
		jump = 0;
		(xcmd->handler)(&pcmd, current_output);
	}
	if ((NULL != current_output) && (stdout != current_output)) {
		(void)FUNC1(current_output);
		current_output = NULL;
	}
}