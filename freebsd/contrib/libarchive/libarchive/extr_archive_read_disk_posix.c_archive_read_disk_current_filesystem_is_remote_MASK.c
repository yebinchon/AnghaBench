#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct archive_read_disk {TYPE_2__* tree; } ;
struct archive {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_filesystem; } ;
struct TYPE_3__ {int remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct archive *_a)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;

	FUNC0(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_DATA,
	    "archive_read_disk_current_filesystem");

	return (a->tree->current_filesystem->remote);
}