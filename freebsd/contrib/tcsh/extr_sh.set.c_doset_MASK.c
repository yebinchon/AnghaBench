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
struct command {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 int ERR_MISSING ; 
 int ERR_NAME ; 
 int ERR_SYNTAX ; 
 int ERR_VARALNUM ; 
 int ERR_VARBEGIN ; 
 int /*<<< orphan*/  STRLparen ; 
 int /*<<< orphan*/  STRequal ; 
 int /*<<< orphan*/  STRmf ; 
 int /*<<< orphan*/  STRml ; 
 int /*<<< orphan*/  STRmr ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 int VAR_FIRST ; 
 int VAR_LAST ; 
 int VAR_READONLY ; 
 int VAR_READWRITE ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 char** FUNC11 (char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  shvhed ; 
 int /*<<< orphan*/  FUNC14 (int,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC16(Char **v, struct command *c)
{
    Char *p;
    Char   *vp;
    Char  **vecp;
    int    hadsub;
    int     subscr;
    int	    flags = VAR_READWRITE;
    int    first_match = 0;
    int    last_match = 0;
    int    changed = 0;

    FUNC1(c);
    v++;
    do {
	changed = 0;
	/*
	 * Readonly addition From: Tim P. Starrin <noid@cyborg.larc.nasa.gov>
	 */
	if (*v && FUNC7(*v, STRmr)) {
	    flags = VAR_READONLY;
	    v++;
	    changed = 1;
	}
	if (*v && FUNC7(*v, STRmf) && !last_match) {
	    first_match = 1;
	    v++;
	    changed = 1;
	}
	if (*v && FUNC7(*v, STRml) && !first_match) {
	    last_match = 1;
	    v++;
	    changed = 1;
	}
    } while(changed);
    p = *v++;
    if (p == 0) {
	FUNC10(&shvhed, flags);
	return;
    }
    do {
	hadsub = 0;
	vp = p;
	if (!FUNC9(*p))
	    FUNC14(ERR_NAME | ERR_VARBEGIN);
	do {
	    p++;
	} while (FUNC2(*p));
	if (*p == '[') {
	    hadsub++;
	    p = FUNC8(p, &subscr);
	}
	if (*p != '\0' && *p != '=')
	    FUNC14(ERR_NAME | ERR_VARALNUM);
	if (*p == '=') {
	    *p++ = '\0';
	    if (*p == '\0' && *v != NULL && **v == '(')
		p = *v++;
	}
	else if (*v && FUNC7(*v, STRequal)) {
	    if (*++v != NULL)
		p = *v++;
	}
	if (FUNC7(p, STRLparen)) {
	    Char **e = v;

	    if (hadsub)
		FUNC14(ERR_NAME | ERR_SYNTAX);
	    for (;;) {
		if (!*e)
		    FUNC14(ERR_NAME | ERR_MISSING, ')');
		if (**e == ')')
		    break;
		e++;
	    }
	    p = *e;
	    *e = 0;
	    vecp = FUNC11(v);
	    if (first_match)
	       flags |= VAR_FIRST;
	    else if (last_match)
	       flags |= VAR_LAST;

	    FUNC12(vp, vecp, &shvhed, flags);
	    *e = p;
	    v = e + 1;
	}
	else if (hadsub) {
	    Char *copy;

	    copy = FUNC0(p);
	    FUNC5(copy, xfree);
	    FUNC3(vp, subscr, copy);
	    FUNC4(copy);
	    FUNC6(copy);
	}
	else
	    FUNC13(vp, FUNC0(p), flags);
	FUNC15(vp);
    } while ((p = *v++) != NULL);
}