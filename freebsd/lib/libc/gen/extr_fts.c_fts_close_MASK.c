#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fts_level; int /*<<< orphan*/  fts_rfd; struct TYPE_5__* fts_path; struct TYPE_5__* fts_array; scalar_t__ fts_child; struct TYPE_5__* fts_parent; struct TYPE_5__* fts_link; struct TYPE_5__* fts_cur; } ;
typedef  TYPE_1__ FTSENT ;
typedef  TYPE_1__ FTS ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_NOCHDIR ; 
 scalar_t__ FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int
FUNC5(FTS *sp)
{
	FTSENT *freep, *p;
	int saved_errno;

	/*
	 * This still works if we haven't read anything -- the dummy structure
	 * points to the root list, so we step through to the end of the root
	 * list which has a valid parent pointer.
	 */
	if (sp->fts_cur) {
		for (p = sp->fts_cur; p->fts_level >= FTS_ROOTLEVEL;) {
			freep = p;
			p = p->fts_link != NULL ? p->fts_link : p->fts_parent;
			FUNC3(freep);
		}
		FUNC3(p);
	}

	/* Free up child linked list, sort array, path buffer. */
	if (sp->fts_child)
		FUNC4(sp->fts_child);
	if (sp->fts_array)
		FUNC3(sp->fts_array);
	FUNC3(sp->fts_path);

	/* Return to original directory, save errno if necessary. */
	if (!FUNC0(FTS_NOCHDIR)) {
		saved_errno = FUNC2(sp->fts_rfd) ? errno : 0;
		(void)FUNC1(sp->fts_rfd);

		/* Set errno and return. */
		if (saved_errno != 0) {
			/* Free up the stream pointer. */
			FUNC3(sp);
			errno = saved_errno;
			return (-1);
		}
	}

	/* Free up the stream pointer. */
	FUNC3(sp);
	return (0);
}