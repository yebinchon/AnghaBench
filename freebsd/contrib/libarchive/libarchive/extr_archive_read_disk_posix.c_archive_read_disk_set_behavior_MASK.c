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
struct archive_read_disk {int flags; TYPE_1__* tree; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_READDISK_RESTORE_ATIME ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  needsRestoreTimes ; 

int
FUNC2(struct archive *_a, int flags)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;
	int r = ARCHIVE_OK;

	FUNC0(_a, ARCHIVE_READ_DISK_MAGIC,
	    ARCHIVE_STATE_ANY, "archive_read_disk_honor_nodump");

	a->flags = flags;

	if (flags & ARCHIVE_READDISK_RESTORE_ATIME)
		r = FUNC1(_a);
	else {
		if (a->tree != NULL)
			a->tree->flags &= ~needsRestoreTimes;
	}
	return (r);
}