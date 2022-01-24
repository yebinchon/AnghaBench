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
 int /*<<< orphan*/  ERR_SYNTAX ; 
 int /*<<< orphan*/  G_ERROR ; 
 char* STRNULL ; 
 int /*<<< orphan*/  TC_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noexec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC6(Char **v, struct command *c)
{
    Char *cp, *lp;

    FUNC0(c);
    v++;
    if (!*v || *(*v++) != '(')
	FUNC5(ERR_SYNTAX);
    cp = **v == ')' ? STRNULL : *v++;
    if (*(*v++) != ')')
	v--;
    if (*v)
	FUNC5(ERR_SYNTAX);
    lp = FUNC3(cp, G_ERROR);
    FUNC1(lp, xfree);
    if (!noexec)
	FUNC4(TC_SWITCH, 0, lp);
    FUNC2(lp);
}