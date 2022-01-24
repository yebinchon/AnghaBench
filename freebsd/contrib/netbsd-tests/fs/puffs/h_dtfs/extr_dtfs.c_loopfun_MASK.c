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
struct puffs_usermount {int dummy; } ;
struct dtfs_poll {int /*<<< orphan*/  dp_pcc; } ;
struct dtfs_mount {int /*<<< orphan*/  dtm_pollent; scalar_t__ dtm_needwakeup; } ;

/* Variables and functions */
 struct dtfs_poll* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dtfs_poll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dp_entries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dtfs_mount* FUNC3 (struct puffs_usermount*) ; 

__attribute__((used)) static void
FUNC4(struct puffs_usermount *pu)
{
	struct dtfs_mount *dtm = FUNC3(pu);
	struct dtfs_poll *dp;

	while (dtm->dtm_needwakeup) {
		dtm->dtm_needwakeup--;
		dp = FUNC0(&dtm->dtm_pollent);
		if (dp == NULL)
			return;

		FUNC1(dp, dp_entries);
		FUNC2(dp->dp_pcc);
	}
}