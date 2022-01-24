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
struct bsdtar {int flags; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int OPTFLAG_INTERACTIVE ; 
 int OPTFLAG_NO_SUBDIRS ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct archive *a, void *_data, struct archive_entry *entry)
{
	struct bsdtar *bsdtar = (struct bsdtar *)_data;

	/* XXX TODO: check whether this filesystem is
	 * synthetic and/or local.  Add a new
	 * --local-only option to skip non-local
	 * filesystems.  Skip synthetic filesystems
	 * regardless.
	 *
	 * The results should be cached, since
	 * tree.c doesn't usually visit a directory
	 * and the directory contents together.  A simple
	 * move-to-front list should perform quite well.
	 *
	 * Use archive_read_disk_current_filesystem_is_remote().
	 */

	/*
	 * If the user vetoes this file/directory, skip it.
	 * We want this to be fairly late; if some other
	 * check would veto this file, we shouldn't bother
	 * the user with it.
	 */
	if ((bsdtar->flags & OPTFLAG_INTERACTIVE) &&
	    !FUNC3("add '%s'", FUNC0(entry)))
		return (0);

	/* Note: if user vetoes, we won't descend. */
	if (((bsdtar->flags & OPTFLAG_NO_SUBDIRS) == 0) &&
	    FUNC1(a))
		FUNC2(a);

	return (1);
}