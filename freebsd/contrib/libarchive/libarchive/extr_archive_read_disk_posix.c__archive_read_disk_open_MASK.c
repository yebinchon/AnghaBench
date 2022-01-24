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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct archive_read_disk {int flags; TYPE_1__ archive; int /*<<< orphan*/ * tree; int /*<<< orphan*/  symlink_mode; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_READDISK_RESTORE_ATIME ; 
 int /*<<< orphan*/  ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_STATE_HEADER ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int
FUNC3(struct archive *_a, const char *pathname)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;

	if (a->tree != NULL)
		a->tree = FUNC2(a->tree, pathname,
		    a->flags & ARCHIVE_READDISK_RESTORE_ATIME);
	else
		a->tree = FUNC1(pathname, a->symlink_mode,
		    a->flags & ARCHIVE_READDISK_RESTORE_ATIME);
	if (a->tree == NULL) {
		FUNC0(&a->archive, ENOMEM,
		    "Can't allocate tar data");
		a->archive.state = ARCHIVE_STATE_FATAL;
		return (ARCHIVE_FATAL);
	}
	a->archive.state = ARCHIVE_STATE_HEADER;

	return (ARCHIVE_OK);
}