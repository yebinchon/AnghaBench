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
struct Strbuf {int dummy; } ;
typedef  char eChar ;
typedef  char Char ;

/* Variables and functions */
 int DOALL ; 
 int DOEXCL ; 
 int /*<<< orphan*/  ERR_UNMATCHED ; 
 int /*<<< orphan*/  ERR_WTOOLONG ; 
 scalar_t__ HIST ; 
 int /*<<< orphan*/  Htime ; 
 char QUOTE ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  Strbuf_cleanup ; 
 char* FUNC1 (struct Strbuf*) ; 
 int _ESC ; 
 int _META ; 
 int _QB ; 
 int _QF ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ bslash_quote ; 
 int /*<<< orphan*/  FUNC3 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Strbuf*) ; 
 scalar_t__ FUNC6 (char,int) ; 
 scalar_t__ enterhist ; 
 char FUNC7 (int) ; 
 scalar_t__ intty ; 
 int onelflg ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 

__attribute__((used)) static Char *
FUNC10(int parsehtime)
{
    eChar c, c1;
    struct Strbuf wbuf = Strbuf_INIT;
    Char    hbuf[12];
    int	    h;
    int dolflg;
    int toolong = 0;

    FUNC4(&wbuf, Strbuf_cleanup);
loop:
    if (enterhist && toolong++ > 256 * 1024)
	FUNC8(ERR_WTOOLONG);
    while ((c = FUNC7(DOALL)) == ' ' || c == '\t')
	continue;
    if (FUNC6(c, _META | _ESC))
	switch (c) {
	case '&':
	case '|':
	case '<':
	case '>':
	    FUNC0(&wbuf, c);
	    c1 = FUNC7(DOALL);
	    if (c1 == c)
		FUNC0(&wbuf, c1);
	    else
		FUNC9(c1);
	    goto ret;

	case '#':
	    if (intty || (enterhist && !parsehtime))
		break;
	    c = 0;
	    h = 0;
	    do {
		c1 = c;
		c = FUNC7(0);
		if (h < 11 && parsehtime)
		    hbuf[h++] = c;
	    } while (c != '\n');
	    if (parsehtime) {
		hbuf[11] = '\0';
		Htime = FUNC2(hbuf); 
	    }
	    if (c1 == '\\')
		goto loop;
	    /*FALLTHROUGH*/

	case ';':
	case '(':
	case ')':
	case '\n':
	    FUNC0(&wbuf, c);
	    goto ret;

	case '\\':
	    c = FUNC7(0);
	    if (c == '\n') {
		if (onelflg == 1)
		    onelflg = 2;
		goto loop;
	    }
	    if (c != (eChar)HIST)
		FUNC0(&wbuf, '\\');
	    c |= QUOTE;
	default:
	    break;
	}
    c1 = 0;
    dolflg = DOALL;
    for (;;) {
	if (enterhist && toolong++ > 256 * 1024)
	    FUNC8(ERR_WTOOLONG);
	if (c1) {
	    if (c == c1) {
		c1 = 0;
		dolflg = DOALL;
	    }
	    else if (c == '\\') {
		c = FUNC7(0);
/*
 * PWP: this is dumb, but how all of the other shells work.  If \ quotes
 * a character OUTSIDE of a set of ''s, why shouldn't it quote EVERY
 * following character INSIDE a set of ''s.
 *
 * Actually, all I really want to be able to say is 'foo\'bar' --> foo'bar
 */
		if (c == (eChar)HIST)
		    c |= QUOTE;
		else {
		    if (bslash_quote &&
			((c == '\'') || (c == '"') ||
			 (c == '\\') || (c == '$'))) {
			c |= QUOTE;
		    }
		    else {
			if (c == '\n')
			    /*
			     * if (c1 == '`') c = ' '; else
			     */
			    c |= QUOTE;
			FUNC9(c);
			c = '\\' | QUOTE;
		    }
		}
	    }
	    else if (c == '\n') {
		FUNC8(ERR_UNMATCHED, c1);
		FUNC9(c);
		break;
	    }
	}
	else if (FUNC6(c, _META | _QF | _QB | _ESC)) {
	    if (c == '\\') {
		c = FUNC7(0);
		if (c == '\n') {
		    if (onelflg == 1)
			onelflg = 2;
		    break;
		}
		if (c != (eChar)HIST)
		    FUNC0(&wbuf, '\\');
		c |= QUOTE;
	    }
	    else if (FUNC6(c, _QF | _QB)) {	/* '"` */
		c1 = c;
		dolflg = c == '"' ? DOALL : DOEXCL;
	    }
	    else if (c != '#' || (!intty && !enterhist)) {
		FUNC9(c);
		break;
	    }
	}
	FUNC0(&wbuf, c);
	c = FUNC7(dolflg);
    }
ret:
    FUNC3(&wbuf);
    FUNC5(&wbuf);
    return FUNC1(&wbuf);
}