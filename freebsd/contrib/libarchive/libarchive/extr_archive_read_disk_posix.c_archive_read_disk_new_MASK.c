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
struct archive {int /*<<< orphan*/  vtable; int /*<<< orphan*/  state; int /*<<< orphan*/  magic; } ;
struct archive_read_disk {struct archive archive; int /*<<< orphan*/  tree_enter_working_dir; int /*<<< orphan*/  tree_current_dir_fd; int /*<<< orphan*/  open_on_current_dir; int /*<<< orphan*/  flags; int /*<<< orphan*/  lookup_gname; int /*<<< orphan*/  lookup_uname; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_READDISK_MAC_COPYFILE ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  open_on_current_dir ; 
 int /*<<< orphan*/  tree_current_dir_fd ; 
 int /*<<< orphan*/  tree_enter_working_dir ; 
 int /*<<< orphan*/  trivial_lookup_gname ; 
 int /*<<< orphan*/  trivial_lookup_uname ; 

struct archive *
FUNC3(void)
{
	struct archive_read_disk *a;

	a = (struct archive_read_disk *)FUNC2(1, sizeof(*a));
	if (a == NULL)
		return (NULL);
	a->archive.magic = ARCHIVE_READ_DISK_MAGIC;
	a->archive.state = ARCHIVE_STATE_NEW;
	a->archive.vtable = FUNC1();
	a->entry = FUNC0(&a->archive);
	a->lookup_uname = trivial_lookup_uname;
	a->lookup_gname = trivial_lookup_gname;
	a->flags = ARCHIVE_READDISK_MAC_COPYFILE;
	a->open_on_current_dir = open_on_current_dir;
	a->tree_current_dir_fd = tree_current_dir_fd;
	a->tree_enter_working_dir = tree_enter_working_dir;
	return (&a->archive);
}