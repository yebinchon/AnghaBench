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
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
struct login_res {char* what; int /*<<< orphan*/  why; int /*<<< orphan*/  (* who ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  rlim_t ;
struct TYPE_7__ {int /*<<< orphan*/  lc_class; } ;
typedef  TYPE_1__ login_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 struct login_res* resources ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 

void
FUNC8(login_cap_t *lc)
{
    struct login_res *lr;

    if (lc == NULL)
	return;

    for (lr = resources; lr->what != NULL; ++lr) {
	struct rlimit	rlim;

	/*
	 * The login.conf file can have <limit>, <limit>-max, and
	 * <limit>-cur entries.
	 * What we do is get the current current- and maximum- limits.
	 * Then, we try to get an entry for <limit> from the capability,
	 * using the current and max limits we just got as the
	 * default/error values.
	 * *Then*, we try looking for <limit>-cur and <limit>-max,
	 * again using the appropriate values as the default/error
	 * conditions.
	 */

	if (FUNC0(lr->why, &rlim) != 0)
	    FUNC7(LOG_ERR, "getting %s resource limit: %m", lr->what);
	else {
	    char	name_cur[40];
	    char	name_max[40];
	    rlim_t	rcur = rlim.rlim_cur;
	    rlim_t	rmax = rlim.rlim_max;

	    FUNC2(name_cur, "%s-cur", lr->what);
	    FUNC2(name_max, "%s-max", lr->what);

	    rcur = (*lr->who)(lc, lr->what, rcur, rcur);
	    rmax = (*lr->who)(lc, lr->what, rmax, rmax);
	    rlim.rlim_cur = (*lr->who)(lc, name_cur, rcur, rcur);
	    rlim.rlim_max = (*lr->who)(lc, name_max, rmax, rmax);

	    if (FUNC1(lr->why, &rlim) == -1)
		FUNC7(LOG_WARNING, "set class '%s' resource limit %s: %m", lc->lc_class, lr->what);
	}
    }
}