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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int INBUFSIZE ; 
#define  S_CODE 142 
#define  S_COMMENT 141 
#define  S_DISCARD 140 
#define  S_KEYWORD 139 
#define  T_COMMENT 138 
#define  T_ENDCODE 137 
#define  T_ENDDEF 136 
#define  T_HOSTTYPE 135 
#define  T_MACHTYPE 134 
#define  T_MACRO 133 
#define  T_NEWCODE 132 
#define  T_NEWDEF 131 
#define  T_NONE 130 
#define  T_OSTYPE 129 
#define  T_VENDOR 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (char**,char*) ; 
 char** keyword ; 
 char* pname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC7 (char*,char) ; 

int
FUNC8(int argc, char *argv[])
{
    char line[INBUFSIZE];
    const char *fname = "stdin";
    char *ptr, *tok;
    char defs[INBUFSIZE];
    char stmt[INBUFSIZE];
    FILE *fp = stdin;
    int lineno = 0;
    int inprocess = 0;
    int token, state;
    int errs = 0;

    if ((pname = FUNC7(argv[0], '/')) == NULL)
	pname = argv[0];
    else
	pname++;

    if (argc > 2) {
	(void) FUNC5(stderr, "Usage: %s [<filename>]\n", pname);
	return 1;
    }

    if (argc == 2)
	if ((fp = FUNC4(fname = argv[1], "r")) == NULL) {
	    (void) FUNC5(stderr, "%s: Cannot open `%s'\n", pname, fname);
	    return 1;
	}

    state = S_DISCARD;

    while ((ptr = FUNC2(line, sizeof(line), fp)) != NULL) {
	lineno++;
	switch (token = FUNC3(FUNC6(&ptr, defs))) {
	case T_NEWCODE:
	    state = S_CODE;
	    break;

	case T_ENDCODE:
	    state = S_DISCARD;
	    break;

	case T_COMMENT:
	    state = S_COMMENT;
	    break;

	case T_NEWDEF:
	    state = S_KEYWORD;
	    break;

	case T_ENDDEF:
	    state = S_DISCARD;
	    break;

	case T_VENDOR:
	    state = S_KEYWORD;
	    break;

	case T_HOSTTYPE:
	    state = S_KEYWORD;
	    break;

	case T_MACHTYPE:
	    state = S_KEYWORD;
	    break;

	case T_OSTYPE:
	    state = S_KEYWORD;
	    break;

	case T_MACRO:
	    if (FUNC6(&ptr, defs) == NULL) {
		(void) FUNC5(stderr, "%s: \"%s\", %d: Missing macro name\n",
			       pname, fname, lineno);
		break;
	    }
	    if (FUNC6(&ptr, stmt) == NULL) {
		(void) FUNC5(stderr, "%s: \"%s\", %d: Missing macro body\n",
			       pname, fname, lineno);
		break;
	    }
	    (void) FUNC5(stdout, "\n#if %s\n# define %s\n#endif\n\n",
		FUNC0(stmt), defs);
	    break;

	case T_NONE:
	    if (state != S_CODE && *defs != '\0') {
		(void) FUNC5(stderr, "%s: \"%s\", %d: Discarded\n",
			       pname, fname, lineno);
		if (++errs == 30) {
		    (void) FUNC5(stderr, "%s: Too many errors\n", pname);
		    return 1;
		}
		break;
	    }
	    (void) FUNC5(stdout, "%s", line);
	    break;

	default:
	    (void) FUNC5(stderr, "%s: \"%s\", %d: Unexpected token\n",
			   pname, fname, lineno);
	    return 1;
	}

	switch (state) {
	case S_DISCARD:
	    if (inprocess) {
		inprocess = 0;
		(void) FUNC5(stdout, "#endif\n");
	    }
	    break;

	case S_KEYWORD:
	    tok = FUNC6(&ptr, defs);
	    if (token == T_NEWDEF) {
		if (inprocess) {
		    (void) FUNC5(stderr, "%s: \"%s\", %d: Missing enddef\n",
				   pname, fname, lineno);
		    return 1;
		}
		if (tok == NULL) {
		    (void) FUNC5(stderr, "%s: \"%s\", %d: No defs\n",
				   pname, fname, lineno);
		    return 1;
		}
		(void) FUNC5(stdout, "\n\n");
#ifdef LINEDIRECTIVE
		(void) fprintf(stdout, "# %d \"%s\"\n", lineno + 1, fname);
#endif /* LINEDIRECTIVE */
		(void) FUNC5(stdout, "#if (%s)\n", FUNC0(defs));
		inprocess = 1;
	    }
	    else {
		if (tok && *tok)
		    (void) FUNC5(stdout, "# if (%s) && !defined(_%s_)\n",
				   FUNC0(defs), keyword[token]);
		else
		    (void) FUNC5(stdout, "# if !defined(_%s_)\n", 
				   keyword[token]);

		if (FUNC6(&ptr, stmt) == NULL) {
		    (void) FUNC5(stderr, "%s: \"%s\", %d: No statement\n",
				   pname, fname, lineno);
		    return 1;
		}
		(void) FUNC5(stdout, "# define _%s_\n", keyword[token]);
		(void) FUNC5(stdout, "    %s = %s;\n", keyword[token], stmt);
		(void) FUNC5(stdout, "# endif\n");
	    }
	    break;

	case S_COMMENT:
	    if (FUNC6(&ptr, defs))
		(void) FUNC5(stdout, "    /* %s */\n", defs);
	    break;

	case S_CODE:
	    if (token == T_NEWCODE) {
#ifdef LINEDIRECTIVE
		(void) fprintf(stdout, "# %d \"%s\"\n", lineno + 1, fname);
#endif /* LINEDIRECTIVE */
	    }
	    break;

	default:
	    (void) FUNC5(stderr, "%s: \"%s\", %d: Unexpected state\n",
			   pname, fname, lineno);
	    return 1;
	}
    }

    if (inprocess) {
	(void) FUNC5(stderr, "%s: \"%s\", %d: Missing enddef\n",
		       pname, fname, lineno);
	return 1;
    }

    if (fp != stdin)
	(void) FUNC1(fp);

    return 0;
}