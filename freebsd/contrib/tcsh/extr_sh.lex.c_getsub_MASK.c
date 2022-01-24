#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wordent {int dummy; } ;
typedef  char eChar ;
struct TYPE_7__ {scalar_t__ len; int /*<<< orphan*/ * s; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BADBANGMOD ; 
 int /*<<< orphan*/  ERR_BADSUBST ; 
 int /*<<< orphan*/  ERR_LHS ; 
 int /*<<< orphan*/  ERR_NOSUBST ; 
 int FLAG_A ; 
 int FLAG_G ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char) ; 
 struct wordent* FUNC6 (char,struct wordent*,int) ; 
 scalar_t__ exclc ; 
 scalar_t__ exclnxt ; 
 char FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  justpr ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 TYPE_1__ lhsb ; 
 TYPE_1__ rhsb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 TYPE_1__ slhs ; 
 int /*<<< orphan*/  FUNC10 (char) ; 

__attribute__((used)) static struct wordent *
FUNC11(struct wordent *en)
{
    eChar   delim;
    eChar   c;
    eChar   sc;
    int global;

    do {
	exclnxt = 0;
	global = 0;
	sc = c = FUNC7(0);
	while (c == 'g' || c == 'a') {
	    global |= (c == 'g') ? FLAG_G : FLAG_A;
	    sc = c = FUNC7(0);
	}

	switch (c) {
	case 'p':
	    justpr++;
	    return (en);

	case 'x':
	case 'q':
	    global |= FLAG_G;
	    /*FALLTHROUGH*/

	case 'h':
	case 'r':
	case 't':
	case 'e':
	case 'u':
	case 'l':
	    break;

	case '&':
	    if (slhs.len == 0) {
		FUNC9(ERR_NOSUBST);
		return (en);
	    }
	    lhsb.len = 0;
	    FUNC1(&lhsb, slhs.s);
	    FUNC3(&lhsb);
	    break;

#ifdef notdef
	case '~':
	    if (lhsb.len == 0)
		goto badlhs;
	    break;
#endif

	case 's':
	    delim = FUNC7(0);
	    if (FUNC8(delim) || FUNC0(delim) || FUNC5(" \t\n", delim)) {
		FUNC10(delim);
		lhsb.len = 0;
		FUNC9(ERR_BADSUBST);
		return (en);
	    }
	    FUNC3(&lhsb);
	    lhsb.len = 0;
	    for (;;) {
		c = FUNC7(0);
		if (c == '\n') {
		    FUNC10(c);
		    break;
		}
		if (c == delim)
		    break;
		if (c == '\\') {
		    c = FUNC7(0);
		    if (c != delim && c != '\\')
			FUNC2(&lhsb, '\\');
		}
		FUNC2(&lhsb, c);
	    }
	    if (lhsb.len != 0)
		FUNC3(&lhsb);
	    else if (lhsb.s[0] == 0) {
		FUNC9(ERR_LHS);
		return (en);
	    } else
		lhsb.len = FUNC4(lhsb.s); /* lhsb.s wasn't changed */
	    rhsb.len = 0;
	    for (;;) {
		c = FUNC7(0);
		if (c == '\n') {
		    FUNC10(c);
		    break;
		}
		if (c == delim)
		    break;
		if (c == '\\') {
		    c = FUNC7(0);
		    if (c != delim /* && c != '~' */ )
			FUNC2(&rhsb,  '\\');
		}
		FUNC2(&rhsb, c);
	    }
	    FUNC3(&rhsb);
	    break;

	default:
	    if (c == '\n')
		FUNC10(c);
	    FUNC9(ERR_BADBANGMOD, (int)c);
	    return (en);
	}
	slhs.len = 0;
	if (lhsb.s != NULL && lhsb.len != 0)
	    FUNC1(&slhs, lhsb.s);
	FUNC3(&slhs);
	if (exclc)
	    en = FUNC6(sc, en, global);
    }
    while ((c = FUNC7(0)) == ':');
    FUNC10(c);
    return (en);
}