#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
struct dtfs_poll {int /*<<< orphan*/  dp_pcc; } ;
struct dtfs_mount {int /*<<< orphan*/  dtm_pollent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dtfs_poll*,int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  dp_entries ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dtfs_mount* FUNC4 (struct puffs_usermount*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct puffs_usermount *pu, void *opc, int *events)
{
	struct dtfs_mount *dtm = FUNC4(pu);
	struct dtfs_poll dp;
	struct itimerval it;

	FUNC1(&it, 0, sizeof(struct itimerval));
	it.it_value.tv_sec = 4;
	if (FUNC5(ITIMER_REAL, &it, NULL) == -1)
		return errno;

	dp.dp_pcc = FUNC2(pu);
	FUNC0(&dtm->dtm_pollent, &dp, dp_entries);
	FUNC3(dp.dp_pcc);

	*events = *events & (POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);
	return 0;
}