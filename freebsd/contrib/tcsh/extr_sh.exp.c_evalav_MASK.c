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
struct wordent {struct wordent* next; struct wordent* prev; int /*<<< orphan*/  word; } ;
struct command {struct command* next; struct command* prev; int /*<<< orphan*/  word; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OLD ; 
 int /*<<< orphan*/  STR0 ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (struct wordent*) ; 
 int /*<<< orphan*/  FUNC2 (struct wordent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wordent*) ; 
 int /*<<< orphan*/  FUNC4 (struct wordent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wordent*) ; 
 int /*<<< orphan*/  lex_cleanup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ seterr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct wordent* FUNC8 (struct wordent*,struct wordent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syntax_cleanup ; 
 struct wordent* FUNC9 (int,int) ; 

__attribute__((used)) static void
FUNC10(Char **v)
{
    struct wordent paraml1;
    struct wordent *hp = &paraml1;
    struct command *t;
    struct wordent *wdp = hp;

    FUNC6(STRstatus, STR0, VAR_READWRITE);
    FUNC5(hp);
    while (*v) {
	struct wordent *new = FUNC9(1, sizeof *wdp);

	new->prev = wdp;
	new->next = hp;
	wdp->next = new;
	wdp = new;
	wdp->word = FUNC0(*v++);
    }
    hp->prev = wdp;
    FUNC2(&paraml1, lex_cleanup);
    FUNC1(&paraml1);
    t = FUNC8(paraml1.next, &paraml1, 0);
    FUNC2(t, syntax_cleanup);
    if (seterr)
	FUNC7(ERR_OLD);
    FUNC4(t, -1, NULL, NULL, TRUE);
    FUNC3(&paraml1);
}