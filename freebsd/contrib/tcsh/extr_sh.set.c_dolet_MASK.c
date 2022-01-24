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
struct varent {int /*<<< orphan*/ * vec; } ;
struct command {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 int ERR_ASSIGN ; 
 int ERR_NAME ; 
 int ERR_SYNTAX ; 
 int ERR_UNKNOWNOP ; 
 int ERR_VARBEGIN ; 
 char* STR1 ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int*) ; 
 struct varent* FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (char) ; 
 char* FUNC11 (char,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC17 (char*,char***) ; 

void
FUNC18(Char **v, struct command *dummy)
{
    Char *p;
    Char   *vp, c, op;
    int    hadsub;
    int     subscr;

    FUNC1(dummy);
    v++;
    p = *v++;
    if (p == 0) {
	FUNC12();
	return;
    }
    do {
	hadsub = 0;
	vp = p;
	if (FUNC10(*p))
	    for (; FUNC2(*p); p++)
		continue;
	if (vp == p || !FUNC10(*vp))
	    FUNC14(ERR_NAME | ERR_VARBEGIN);
	if (*p == '[') {
	    hadsub++;
	    p = FUNC8(p, &subscr);
	}
	if (*p == 0 && *v)
	    p = *v++;
	if ((op = *p) != 0)
	    *p++ = 0;
	else
	    FUNC14(ERR_NAME | ERR_ASSIGN);

	/*
	 * if there is no expression after the '=' then print a "Syntax Error"
	 * message - strike
	 */
	if (*p == '\0' && *v == NULL)
	    FUNC14(ERR_NAME | ERR_ASSIGN);

	vp = FUNC0(vp);
	FUNC6(vp, xfree);
	if (op == '=') {
	    c = '=';
	    p = FUNC17(p, &v);
	}
	else {
	    c = *p++;
	    if (FUNC3("+-", c)) {
		if (c != op || *p)
		    FUNC14(ERR_NAME | ERR_UNKNOWNOP);
		p = FUNC0(STR1);
	    }
	    else {
		if (FUNC3("<>", op)) {
		    if (c != op)
			FUNC14(ERR_NAME | ERR_UNKNOWNOP);
		    FUNC14(ERR_NAME | ERR_SYNTAX);
		}
		if (c != '=')
		    FUNC14(ERR_NAME | ERR_UNKNOWNOP);
		p = FUNC17(p, &v);
	    }
	}
	FUNC6(p, xfree);
	if (op == '=') {
	    if (hadsub)
		FUNC4(vp, subscr, p);
	    else
		FUNC13(vp, p, VAR_READWRITE);
	    FUNC5(p);
	}
	else if (hadsub) {
	    struct varent *gv = FUNC9(vp, subscr);
	    Char *val;

	    val = FUNC11(op, gv->vec[subscr - 1], p);
	    FUNC6(val, xfree);
	    FUNC4(vp, subscr, val);
	    FUNC5(val);
	    FUNC7(val);
	}
	else {
	    Char *val;

	    val = FUNC11(op, FUNC16(vp), p);
	    FUNC6(val, xfree);
	    FUNC13(vp, val, VAR_READWRITE);
	    FUNC5(val);
	    FUNC7(val);
	}
	FUNC15(vp);
	FUNC7(vp);
    } while ((p = *v++) != NULL);
}