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
struct Strbuf {int len; } ;
typedef  char eChar ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char CHAR_ERR ; 
 int ERR_NAME ; 
 int ERR_NOTFOUND ; 
 int /*<<< orphan*/  Sgoal ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 int Stype ; 
#define  TC_BREAK 133 
#define  TC_BRKSW 132 
#define  TC_ELSE 131 
#define  TC_GOTO 130 
#define  TC_IF 129 
#define  TC_SWITCH 128 
 char FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static int
FUNC7(struct Strbuf *wp)
{
    int found = 0, first;
    eChar c, d;

    if (wp)
	wp->len = 0;
    c = FUNC2(1);
    d = 0;
    do {
	while (c == ' ' || c == '\t')
	    c = FUNC2(1);
	if (c == '#')
	    do
		c = FUNC2(1);
	    while (c != CHAR_ERR && c != '\n');
	if (c == CHAR_ERR)
	    goto past;
	if (c == '\n') {
	    if (wp)
		break;
	    return (0);
	}
	FUNC6(c);
	found = 1;
	first = 1;
	do {
	    c = FUNC2(1);
	    if (c == '\\' && (c = FUNC2(1)) == '\n')
		c = ' ';
	    if (c == '\'' || c == '"') {
		if (d == 0)
		    d = c;
		else if (d == c)
		    d = 0;
	    }
	    if (c == CHAR_ERR)
		goto past;
	    if (wp)
		FUNC0(wp, (Char) c);
	    if (!d && c == ')') {
		if (!first && wp) {
		    goto past_word_end;
		} else {
		    if (wp) {
			wp->len = 1;
			FUNC1(wp);
		    }
		    return found;
		}
	    }
	    if (!first && !d && c == '(') {
		if (wp)
		    goto past_word_end;
		else 
		    break;
	    }
	    first = 0;
	} while ((d || (c != ' ' && c != '\t')) && c != '\n');
    } while (wp == 0);

 past_word_end:
    FUNC6(c);
    if (found) {
	wp->len--;
	FUNC1(wp);
    }

    return (found);

past:
    switch (Stype) {

    case TC_IF:
	FUNC5(ERR_NAME | ERR_NOTFOUND, "then/endif");
	break;

    case TC_ELSE:
	FUNC5(ERR_NAME | ERR_NOTFOUND, "endif");
	break;

    case TC_BRKSW:
    case TC_SWITCH:
	FUNC5(ERR_NAME | ERR_NOTFOUND, "endsw");
	break;

    case TC_BREAK:
	FUNC5(ERR_NAME | ERR_NOTFOUND, "end");
	break;

    case TC_GOTO:
	FUNC3(FUNC4(Sgoal));
	FUNC5(ERR_NAME | ERR_NOTFOUND, "label");
	break;

    default:
	break;
    }
    /* NOTREACHED */
    return (0);
}