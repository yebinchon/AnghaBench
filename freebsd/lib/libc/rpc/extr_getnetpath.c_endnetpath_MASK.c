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
struct netpath_vars {scalar_t__ valid; int /*<<< orphan*/  ncp; struct netpath_vars* nchain_next; struct netpath_vars* ncp_list; struct netpath_vars* netpath_start; int /*<<< orphan*/ * nc_handlep; } ;
struct netpath_chain {scalar_t__ valid; int /*<<< orphan*/  ncp; struct netpath_chain* nchain_next; struct netpath_chain* ncp_list; struct netpath_chain* netpath_start; int /*<<< orphan*/ * nc_handlep; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ NP_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct netpath_vars*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(void *handlep)
{
    struct netpath_vars *np_sessionp = (struct netpath_vars *)handlep;
    struct netpath_chain *chainp, *lastp;

    if (np_sessionp == NULL || np_sessionp->valid != NP_VALID) {
	errno = EINVAL;
	return (-1);
    }
    if (np_sessionp->nc_handlep != NULL)
	FUNC0(np_sessionp->nc_handlep);
    if (np_sessionp->netpath_start != NULL)
	FUNC3(np_sessionp->netpath_start);
    for (chainp = np_sessionp->ncp_list; chainp != NULL;
	    lastp=chainp, chainp=chainp->nchain_next, FUNC3(lastp)) {
	FUNC4(chainp->ncp);
    }
    FUNC3(np_sessionp);
#ifdef MEM_CHK
    if (malloc_verify() == 0) {
	fprintf(stderr, "memory heap corrupted in endnetpath\n");
	exit(1);
    }
#endif
    return (0);
}