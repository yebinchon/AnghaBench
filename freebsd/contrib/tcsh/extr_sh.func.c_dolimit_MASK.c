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
struct limits {scalar_t__ limconst; } ;
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  RLIM_TYPE ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_SILENT ; 
 int /*<<< orphan*/  STRmh ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct limits* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct limits*,int /*<<< orphan*/ **) ; 
 struct limits* limits ; 
 int /*<<< orphan*/  FUNC4 (struct limits*,int) ; 
 scalar_t__ FUNC5 (struct limits*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(Char **v, struct command *c)
{
    struct limits *lp;
    RLIM_TYPE limit;
    int    hard = 0;

    FUNC0(c);
    v++;
    if (*v && FUNC1(*v, STRmh)) {
	hard = 1;
	v++;
    }
    if (*v == 0) {
	for (lp = limits; lp->limconst >= 0; lp++)
	    FUNC4(lp, hard);
	return;
    }
    lp = FUNC2(v[0]);
    if (v[1] == 0) {
	FUNC4(lp, hard);
	return;
    }
    limit = FUNC3(lp, v + 1);
    if (FUNC5(lp, hard, limit) < 0)
	FUNC6(ERR_SILENT);
}