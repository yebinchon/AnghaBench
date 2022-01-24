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
struct archive_read_disk {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read_disk*,char,int) ; 

int
FUNC2(struct archive *_a)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;
	FUNC0(_a, ARCHIVE_READ_DISK_MAGIC,
	    ARCHIVE_STATE_ANY, "archive_read_disk_set_symlink_logical");
	FUNC1(a, 'L', 1);
	return (ARCHIVE_OK);
}