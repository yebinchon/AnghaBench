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
struct iso9660 {struct file_info* use_files; } ;
struct TYPE_2__ {struct file_info* first; } ;
struct file_info {struct file_info* next; TYPE_1__ contents; struct file_info* utf16be_name; int /*<<< orphan*/  symlink; int /*<<< orphan*/  name; struct file_info* use_next; } ;
struct content {struct content* next; TYPE_1__ contents; struct content* utf16be_name; int /*<<< orphan*/  symlink; int /*<<< orphan*/  name; struct content* use_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file_info*) ; 

__attribute__((used)) static void
FUNC2(struct iso9660 *iso9660)
{
	struct content *con, *connext;
	struct file_info *file;

	file = iso9660->use_files;
	while (file != NULL) {
		struct file_info *next = file->use_next;

		FUNC0(&file->name);
		FUNC0(&file->symlink);
		FUNC1(file->utf16be_name);
		con = file->contents.first;
		while (con != NULL) {
			connext = con->next;
			FUNC1(con);
			con = connext;
		}
		FUNC1(file);
		file = next;
	}
}