#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* fts_child; TYPE_1__* fts_cur; } ;
struct TYPE_7__ {scalar_t__ fts_info; scalar_t__ fts_level; char* fts_accpath; struct TYPE_7__* fts_link; } ;
typedef  TYPE_1__ FTSENT ;
typedef  TYPE_2__ FTS ;

/* Variables and functions */
 int BCHILD ; 
 int BNAMES ; 
 scalar_t__ EINVAL ; 
 scalar_t__ FTS_D ; 
 scalar_t__ FTS_INIT ; 
 int FTS_NAMEONLY ; 
 int /*<<< orphan*/  FTS_NOCHDIR ; 
 scalar_t__ FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FTS_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

FTSENT *
FUNC7(FTS *sp, int instr)
{
	FTSENT *p;
	int fd;

	if (instr != 0 && instr != FTS_NAMEONLY) {
		errno = EINVAL;
		return (NULL);
	}

	/* Set current node pointer. */
	p = sp->fts_cur;

	/*
	 * Errno set to 0 so user can distinguish empty directory from
	 * an error.
	 */
	errno = 0;

	/* Fatal errors stop here. */
	if (FUNC0(FTS_STOP))
		return (NULL);

	/* Return logical hierarchy of user's arguments. */
	if (p->fts_info == FTS_INIT)
		return (p->fts_link);

	/*
	 * If not a directory being visited in pre-order, stop here.  Could
	 * allow FTS_DNR, assuming the user has fixed the problem, but the
	 * same effect is available with FTS_AGAIN.
	 */
	if (p->fts_info != FTS_D /* && p->fts_info != FTS_DNR */)
		return (NULL);

	/* Free up any previous child list. */
	if (sp->fts_child != NULL)
		FUNC6(sp->fts_child);

	if (instr == FTS_NAMEONLY) {
		FUNC1(FTS_NAMEONLY);
		instr = BNAMES;
	} else
		instr = BCHILD;

	/*
	 * If using chdir on a relative path and called BEFORE fts_read does
	 * its chdir to the root of a traversal, we can lose -- we need to
	 * chdir into the subdirectory, and we don't know where the current
	 * directory is, so we can't get back so that the upcoming chdir by
	 * fts_read will work.
	 */
	if (p->fts_level != FTS_ROOTLEVEL || p->fts_accpath[0] == '/' ||
	    FUNC0(FTS_NOCHDIR))
		return (sp->fts_child = FUNC5(sp, instr));

	if ((fd = FUNC3(".", O_RDONLY | O_CLOEXEC, 0)) < 0)
		return (NULL);
	sp->fts_child = FUNC5(sp, instr);
	if (FUNC4(fd)) {
		(void)FUNC2(fd);
		return (NULL);
	}
	(void)FUNC2(fd);
	return (sp->fts_child);
}