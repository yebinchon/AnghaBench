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
struct directory {int /*<<< orphan*/  di_name; struct directory* di_prev; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STRdirstack ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 struct directory dhead ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shvhed ; 
 int /*<<< orphan*/ ** FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void)
{
    int i = 0;
    Char **dblk, **dbp;
    struct directory *dn;

    if (FUNC1(STRdirstack) == NULL) 
    	return;

    for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev, i++)
	continue;
    dbp = dblk = FUNC6((i + 1) * sizeof(Char *));
    for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev, dbp++)
	 *dbp = FUNC0(dn->di_name);
    *dbp = NULL;
    FUNC3(dblk, blk_cleanup);
    FUNC5(STRdirstack, dblk, &shvhed, VAR_READWRITE);
    FUNC2(dblk);
    FUNC4(dblk);
}