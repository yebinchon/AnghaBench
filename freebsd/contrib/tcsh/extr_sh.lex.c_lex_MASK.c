#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wordent {char* word; struct wordent* prev; struct wordent* next; } ;
typedef  char eChar ;
struct TYPE_3__ {int len; char* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LTOOLONG ; 
 scalar_t__ HISTSUB ; 
 char* STRNULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wordent*) ; 
 int /*<<< orphan*/  FUNC3 (struct wordent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wordent*) ; 
 int enterhist ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int hadhist ; 
 TYPE_1__ histline ; 
 int histvalid ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  lex_cleanup ; 
 int /*<<< orphan*/  lineloc ; 
 int /*<<< orphan*/  postcmd_active ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 char* FUNC9 (int) ; 
 struct wordent* FUNC10 (int) ; 

int
FUNC11(struct wordent *hp)
{
    struct wordent *wdp;
    eChar    c;
    int     parsehtime = enterhist;
    int	    toolong = 0;

    histvalid = 0;
    histline.len = 0;

    if (!postcmd_active)
	FUNC1(&lineloc);
    hp->next = hp->prev = hp;
    hp->word = STRNULL;
    hadhist = 0;
    do
	c = FUNC6(0);
    while (c == ' ' || c == '\t');
    if (c == (eChar)HISTSUB && intty)
	/* ^lef^rit	from tty is short !:s^lef^rit */
	FUNC5(c);
    else
	FUNC8(c);
    FUNC3(hp, lex_cleanup);
    wdp = hp;
    /*
     * The following loop is written so that the links needed by freelex will
     * be ready and rarin to go even if it is interrupted.
     */
    do {
	struct wordent *new;

	new = FUNC10(sizeof(*new));
	new->word = NULL;
	new->prev = wdp;
	new->next = hp;
	wdp->next = new;
	hp->prev = new;
	wdp = new;
	wdp->word = FUNC9(parsehtime);
	parsehtime = 0;
	if (enterhist && toolong++ > 10 * 1024)
	    FUNC7(ERR_LTOOLONG);
    } while (wdp->word[0] != '\n');
    FUNC2(hp);
    FUNC4(hp);
    FUNC0(&histline);
    if (histline.len != 0 && histline.s[histline.len - 1] == '\n')
	histline.s[histline.len - 1] = '\0';
    histvalid = 1;

    return (hadhist);
}