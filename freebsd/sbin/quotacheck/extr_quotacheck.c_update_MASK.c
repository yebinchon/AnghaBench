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
typedef  size_t u_long ;
struct stat {scalar_t__ st_size; } ;
struct quotafile {int dummy; } ;
struct fileusage {scalar_t__ fu_curinodes; scalar_t__ fu_curblocks; size_t fu_id; struct fileusage* fu_next; } ;
struct dqblk {scalar_t__ dqb_curinodes; scalar_t__ dqb_curblocks; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 size_t FUHASH ; 
 int /*<<< orphan*/  FUNC0 (struct dqblk*,int) ; 
 struct fileusage*** fuhead ; 
 struct fileusage* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,struct dqblk*,struct fileusage*,size_t) ; 
 size_t FUNC3 (struct quotafile*) ; 
 int /*<<< orphan*/  FUNC4 (struct quotafile*) ; 
 scalar_t__ FUNC5 (struct quotafile*,struct dqblk*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct quotafile*,struct dqblk*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC9(const char *fsname, struct quotafile *qf, int type)
{
	struct fileusage *fup;
	u_long id, lastid, highid = 0;
	struct dqblk dqbuf;
	struct stat sb;
	static struct dqblk zerodqbuf;
	static struct fileusage zerofileusage;

	/*
	 * Scan the on-disk quota file and record any usage changes.
	 */
	lastid = FUNC3(qf);
	for (id = 0; id <= lastid; id++) {
		if (FUNC5(qf, &dqbuf, id) < 0)
			dqbuf = zerodqbuf;
		if ((fup = FUNC1(id, type)) == NULL)
			fup = &zerofileusage;
		if (fup->fu_curinodes || fup->fu_curblocks ||
		    dqbuf.dqb_bsoftlimit || dqbuf.dqb_bhardlimit ||
		    dqbuf.dqb_isoftlimit || dqbuf.dqb_ihardlimit)
			highid = id;
		if (dqbuf.dqb_curinodes == fup->fu_curinodes &&
		    dqbuf.dqb_curblocks == fup->fu_curblocks) {
			fup->fu_curinodes = 0;
			fup->fu_curblocks = 0;
			continue;
		}
		FUNC2(fsname, type, &dqbuf, fup, id);
		dqbuf.dqb_curinodes = fup->fu_curinodes;
		dqbuf.dqb_curblocks = fup->fu_curblocks;
		(void) FUNC6(qf, &dqbuf, id);
		fup->fu_curinodes = 0;
		fup->fu_curblocks = 0;
	}

	/*
	 * Walk the hash table looking for ids with non-zero usage
	 * that are not currently recorded in the quota file. E.g.
	 * ids that are past the end of the current file.
	 */
	for (id = 0; id < FUHASH; id++) {
		for (fup = fuhead[type][id]; fup != NULL; fup = fup->fu_next) {
			if (fup->fu_id <= lastid)
				continue;
			if (fup->fu_curinodes == 0 && fup->fu_curblocks == 0)
				continue;
			FUNC0(&dqbuf, sizeof(struct dqblk));
			if (fup->fu_id > highid)
				highid = fup->fu_id;
			FUNC2(fsname, type, &dqbuf, fup, fup->fu_id);
			dqbuf.dqb_curinodes = fup->fu_curinodes;
			dqbuf.dqb_curblocks = fup->fu_curblocks;
			(void) FUNC6(qf, &dqbuf, fup->fu_id);
			fup->fu_curinodes = 0;
			fup->fu_curblocks = 0;
		}
	}
	/*
	 * If this is old format file, then size may be smaller,
	 * so ensure that we only truncate when it will make things
	 * smaller, and not if it will grow an old format file.
	 */
	if (highid < lastid &&
	    FUNC7(FUNC4(qf), &sb) == 0 &&
	    sb.st_size > (off_t)((highid + 2) * sizeof(struct dqblk)))
		FUNC8(FUNC4(qf),
		    (((off_t)highid + 2) * sizeof(struct dqblk)));
	return (0);
}