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
struct wordent {void* word; struct wordent* next; struct wordent* prev; } ;
struct Strbuf {int /*<<< orphan*/ * s; scalar_t__ len; scalar_t__ size; } ;
typedef  char eChar ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char CHAR_ERR ; 
 int ERR_NAME ; 
 int ERR_NOTFOUND ; 
 int /*<<< orphan*/  Sgoal ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int Stype ; 
#define  TC_BREAK 133 
#define  TC_BRKSW 132 
#define  TC_ELSE 131 
#define  TC_GOTO 130 
#define  TC_IF 129 
#define  TC_SWITCH 128 
 char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 void* FUNC8 (int) ; 

__attribute__((used)) static struct wordent *
FUNC9(struct wordent *histent) 
{
    int first;
    eChar c, d;
    int e;
    struct Strbuf *tmp;
    tmp = FUNC8(sizeof(*tmp));
    tmp->size = 0;
    tmp->s = NULL;
    c = FUNC3(1);
    d = 0;
    e = 0;
    for (;;) {
	tmp->len = 0;
	FUNC1 (tmp);
	while (c == ' ' || c == '\t')
	    c = FUNC3(1);
	if (c == '#')
	    do
		c = FUNC3(1);
	    while (c != CHAR_ERR && c != '\n');
	if (c == CHAR_ERR)
	    goto past;
	if (c == '\n') 
	    goto nl;
	FUNC7(c);
	first = 1;
	do {
	    e = (c == '\\');
	    c = FUNC3(1);
	    if (c == '\\' && !e) {
		if ((c = FUNC3(1)) == '\n') {
		    e = 1;
		    c = ' ';
		} else {
		    FUNC7(c);
		    c = '\\';
		}
	    }
	    if ((c == '\'' || c == '"') && !e) {
		if (d == 0)
		    d = c;
		else if (d == c)
		    d = 0;
	    }
	    if (c == CHAR_ERR)
		goto past;
	    
	    FUNC0(tmp, (Char) c);
	    
	    if (!first && !d && c == '(' && !e) {
		break;
	    }
	    first = 0;
	} while (d || e || (c != ' ' && c != '\t' && c != '\n'));
	tmp->len--;
	if (tmp->len) {
	    FUNC1(tmp);
	    histent->word = FUNC2(tmp->s);
	    histent->next = FUNC8(sizeof (*histent));
	    histent->next->prev = histent;
	    histent = histent->next;
	}
	if (c == '\n') {
	nl:
	    tmp->len = 0;
	    FUNC0(tmp, (Char) c);
	    FUNC1(tmp);
	    histent->word = FUNC2(tmp->s);
	    return histent;
	}
    }
    
past:
    switch (Stype) {

    case TC_IF:
	FUNC6(ERR_NAME | ERR_NOTFOUND, "then/endif");
	break;

    case TC_ELSE:
	FUNC6(ERR_NAME | ERR_NOTFOUND, "endif");
	break;

    case TC_BRKSW:
    case TC_SWITCH:
	FUNC6(ERR_NAME | ERR_NOTFOUND, "endsw");
	break;

    case TC_BREAK:
	FUNC6(ERR_NAME | ERR_NOTFOUND, "end");
	break;

    case TC_GOTO:
	FUNC4(FUNC5(Sgoal));
	FUNC6(ERR_NAME | ERR_NOTFOUND, "label");
	break;

    default:
	break;
    }
    /* NOTREACHED */
    return NULL;
}