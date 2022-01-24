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
struct archive_read_disk {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int ARCHIVE_STATE_CLOSED ; 
 int ARCHIVE_STATE_NEW ; 
 int FUNC0 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct archive *_a, const char *pathname)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;

	FUNC1(_a, ARCHIVE_READ_DISK_MAGIC,
	    ARCHIVE_STATE_NEW | ARCHIVE_STATE_CLOSED,
	    "archive_read_disk_open");
	FUNC2(&a->archive);

	return (FUNC0(_a, pathname));
}