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
struct statfs {int f_bfree; int f_blocks; } ;
struct dir_ent {char softlim; char hardlim; char* dirname; } ;

/* Variables and functions */
 int ADE_HARDLIM ; 
 int ADE_NOMEM ; 
 int ADE_SOFTLIM ; 
 int AUDIT_HARD_LIMIT_FREE_BLOCKS ; 
 int MAXNAMLEN ; 
 int auditd_hostlen ; 
 int auditd_minval ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dir_ent*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dir_ent*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

int
FUNC12(int (*warn_soft)(char *), int (*warn_hard)(char *))
{
	char cur_dir[MAXNAMLEN];
	struct dir_ent *dirent;
	struct statfs sfs;
	int err;
	char soft, hard;
	int tcnt = 0;
	int scnt = 0;
	int hcnt = 0;

	if (auditd_minval == -1 && (err = FUNC1()) != 0)
		return (err);

	if (auditd_hostlen == -1)
		FUNC0();

	/*
	 * Init directory q.  Force a re-read of the file the next time.
	 */
	FUNC4();
	FUNC2();

	/*
	 * Read the list of directories into an ordered linked list
	 * admin's preference, then those over soft limit and, finally,
	 * those over the hard limit.
	 *
	 * XXX We should use the reentrant interfaces once they are
	 * available.
	 */
	while (FUNC5(cur_dir, MAXNAMLEN) >= 0) {
		if (FUNC8(cur_dir, &sfs) < 0)
			continue;  /* XXX should warn */
		soft = (sfs.f_bfree < (sfs.f_blocks * auditd_minval / 100 )) ?
		    1 : 0;
		hard = (sfs.f_bfree < AUDIT_HARD_LIMIT_FREE_BLOCKS) ? 1 : 0;
		if (soft) {
			if (warn_soft)
				(*warn_soft)(cur_dir);
			scnt++;
		}
		if (hard) {
			if (warn_hard)
				(*warn_hard)(cur_dir);
			hcnt++;
		}
		dirent = (struct dir_ent *) FUNC7(sizeof(struct dir_ent));
		if (dirent == NULL)
			return (ADE_NOMEM);
		dirent->softlim = soft;
		dirent->hardlim = hard;
		dirent->dirname = (char *) FUNC7(MAXNAMLEN);
		if (dirent->dirname == NULL) {
			FUNC3(dirent);
			return (ADE_NOMEM);
		}
		FUNC9(dirent->dirname, cur_dir, MAXNAMLEN);
		FUNC6(dirent);
		tcnt++;
	}

	if (hcnt == tcnt)
		return (ADE_HARDLIM);
	if (scnt == tcnt)
		return (ADE_SOFTLIM);
	return (0);
}