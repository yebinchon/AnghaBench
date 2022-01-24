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
typedef  int /*<<< orphan*/  u_long ;
struct fileusage {char* fu_name; scalar_t__ fu_curinodes; scalar_t__ fu_curblocks; } ;
struct dqblk {scalar_t__ dqb_curinodes; scalar_t__ dqb_curblocks; } ;

/* Variables and functions */
#define  GRPQUOTA 129 
#define  USRQUOTA 128 
 scalar_t__ aflag ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  vflag ; 

void
FUNC1(const char *fsname, int type, struct dqblk *dp,
    struct fileusage *fup, u_long id)
{
	if (!vflag)
		return;
	if (aflag)
		(void)FUNC0("%s: ", fsname);
	if (fup->fu_name[0] == '\0')
		(void)FUNC0("%-8lu fixed ", id);
	else
		(void)FUNC0("%-8s fixed ", fup->fu_name);
	switch (type) {

	case GRPQUOTA:
		(void)FUNC0("(group):");
		break;

	case USRQUOTA:
		(void)FUNC0("(user): ");
		break;

	default:
		(void)FUNC0("(unknown quota type %d)", type);
		break;
	}
	if (dp->dqb_curinodes != fup->fu_curinodes)
		(void)FUNC0("\tinodes %lu -> %lu", (u_long)dp->dqb_curinodes,
		    (u_long)fup->fu_curinodes);
	if (dp->dqb_curblocks != fup->fu_curblocks)
		(void)FUNC0("\tblocks %lu -> %lu",
		    (u_long)dp->dqb_curblocks,
		    (u_long)fup->fu_curblocks);
	(void)FUNC0("\n");
}