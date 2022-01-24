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
struct TYPE_2__ {struct isofile* next; } ;
struct isofile {int /*<<< orphan*/  symlink; int /*<<< orphan*/  basename_utf16; int /*<<< orphan*/  basename; int /*<<< orphan*/  parentdir; int /*<<< orphan*/  entry; struct isofile* next; TYPE_1__ content; } ;
struct content {int /*<<< orphan*/  symlink; int /*<<< orphan*/  basename_utf16; int /*<<< orphan*/  basename; int /*<<< orphan*/  parentdir; int /*<<< orphan*/  entry; struct content* next; TYPE_1__ content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isofile*) ; 

__attribute__((used)) static void
FUNC3(struct isofile *file)
{
	struct content *con, *tmp;

	con = file->content.next;
	while (con != NULL) {
		tmp = con;
		con = con->next;
		FUNC2(tmp);
	}
	FUNC0(file->entry);
	FUNC1(&(file->parentdir));
	FUNC1(&(file->basename));
	FUNC1(&(file->basename_utf16));
	FUNC1(&(file->symlink));
	FUNC2(file);
}