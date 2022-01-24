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
struct directory {int /*<<< orphan*/ * di_name; struct directory* di_prev; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int DIR_LINE ; 
 int DIR_LONG ; 
 int DIR_VERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int TermH ; 
 struct directory* dcwd ; 
 struct directory dhead ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(int dflag)
{
    struct directory *dp;
    Char   *s, *user;
    int     idx, len, cur;

    dp = dcwd;
    idx = 0;
    cur = 0;
    do {
	if (dp == &dhead)
	    continue;
	if (dflag & DIR_VERT) {
	    FUNC2("%d\t", idx++);
	    cur = 0;
	}
	s = dp->di_name;		
	user = NULL;
	if (!(dflag & DIR_LONG) && (user = FUNC1(&s)) != NULL)
	    len = (int) (FUNC0(user) + FUNC0(s) + 2);
	else
	    len = (int) (FUNC0(s) + 1);

	cur += len;
	if ((dflag & DIR_LINE) && cur >= TermH - 1 && len < TermH) {
	    FUNC3('\n');
	    cur = len;
	}
	if (user) 
	    FUNC2("~%S", user);
	FUNC2("%-S%c", s, (dflag & DIR_VERT) ? '\n' : ' ');
    } while ((dp = dp->di_prev) != dcwd);
    if (!(dflag & DIR_VERT))
	FUNC3('\n');
}