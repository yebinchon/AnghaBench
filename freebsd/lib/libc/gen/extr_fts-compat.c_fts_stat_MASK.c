#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_short ;
struct freebsd11_stat {scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_nlink; } ;
struct TYPE_3__ {int fts_flags; int fts_errno; scalar_t__ fts_dev; scalar_t__ fts_ino; scalar_t__ fts_level; struct TYPE_3__* fts_cycle; struct TYPE_3__* fts_parent; int /*<<< orphan*/  fts_name; int /*<<< orphan*/  fts_nlink; int /*<<< orphan*/  fts_accpath; struct freebsd11_stat* fts_statp; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_D ; 
 int /*<<< orphan*/  FTS_DC ; 
 int /*<<< orphan*/  FTS_DEFAULT ; 
 int /*<<< orphan*/  FTS_DOT ; 
 int /*<<< orphan*/  FTS_F ; 
 int FTS_ISW ; 
 int /*<<< orphan*/  FTS_LOGICAL ; 
 int /*<<< orphan*/  FTS_NOSTAT ; 
 int /*<<< orphan*/  FTS_NS ; 
 scalar_t__ FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FTS_SL ; 
 int /*<<< orphan*/  FTS_SLNONE ; 
 int /*<<< orphan*/  FTS_W ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_IFWHT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* errno ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct freebsd11_stat*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct freebsd11_stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct freebsd11_stat*,char,int) ; 

__attribute__((used)) static u_short
FUNC8(FTS *sp, FTSENT *p, int follow)
{
	FTSENT *t;
	uint32_t dev;
	uint32_t ino;
	struct freebsd11_stat *sbp, sb;
	int saved_errno;

	/* If user needs stat info, stat buffer already allocated. */
	sbp = FUNC1(FTS_NOSTAT) ? &sb : p->fts_statp;

#ifdef FTS_WHITEOUT
	/* Check for whiteout. */
	if (p->fts_flags & FTS_ISW) {
		if (sbp != &sb) {
			memset(sbp, '\0', sizeof(*sbp));
			sbp->st_mode = S_IFWHT;
		}
		return (FTS_W);
	}
#endif

	/*
	 * If doing a logical walk, or application requested FTS_FOLLOW, do
	 * a stat(2).  If that fails, check for a non-existent symlink.  If
	 * fail, set the errno from the stat call.
	 */
	if (FUNC1(FTS_LOGICAL) || follow) {
		if (FUNC6(p->fts_accpath, sbp)) {
			saved_errno = errno;
			if (!FUNC5(p->fts_accpath, sbp)) {
				errno = 0;
				return (FTS_SLNONE);
			}
			p->fts_errno = saved_errno;
			goto err;
		}
	} else if (FUNC5(p->fts_accpath, sbp)) {
		p->fts_errno = errno;
err:		FUNC7(sbp, 0, sizeof(*sbp));
		return (FTS_NS);
	}

	if (FUNC2(sbp->st_mode)) {
		/*
		 * Set the device/inode.  Used to find cycles and check for
		 * crossing mount points.  Also remember the link count, used
		 * in fts_build to limit the number of stat calls.  It is
		 * understood that these fields are only referenced if fts_info
		 * is set to FTS_D.
		 */
		dev = p->fts_dev = sbp->st_dev;
		ino = p->fts_ino = sbp->st_ino;
		p->fts_nlink = sbp->st_nlink;

		if (FUNC0(p->fts_name))
			return (FTS_DOT);

		/*
		 * Cycle detection is done by brute force when the directory
		 * is first encountered.  If the tree gets deep enough or the
		 * number of symbolic links to directories is high enough,
		 * something faster might be worthwhile.
		 */
		for (t = p->fts_parent;
		    t->fts_level >= FTS_ROOTLEVEL; t = t->fts_parent)
			if (ino == t->fts_ino && dev == t->fts_dev) {
				p->fts_cycle = t;
				return (FTS_DC);
			}
		return (FTS_D);
	}
	if (FUNC3(sbp->st_mode))
		return (FTS_SL);
	if (FUNC4(sbp->st_mode))
		return (FTS_F);
	return (FTS_DEFAULT);
}