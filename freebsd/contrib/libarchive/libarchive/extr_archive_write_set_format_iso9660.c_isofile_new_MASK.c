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
struct isofile {int /*<<< orphan*/  content; int /*<<< orphan*/ * cur_content; int /*<<< orphan*/  symlink; int /*<<< orphan*/  basename_utf16; int /*<<< orphan*/  basename; int /*<<< orphan*/  parentdir; int /*<<< orphan*/ * entry; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct isofile* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct isofile*) ; 

__attribute__((used)) static struct isofile *
FUNC5(struct archive_write *a, struct archive_entry *entry)
{
	struct isofile *file;

	file = FUNC3(1, sizeof(*file));
	if (file == NULL)
		return (NULL);

	if (entry != NULL)
		file->entry = FUNC0(entry);
	else
		file->entry = FUNC1(&a->archive);
	if (file->entry == NULL) {
		FUNC4(file);
		return (NULL);
	}
	FUNC2(&(file->parentdir));
	FUNC2(&(file->basename));
	FUNC2(&(file->basename_utf16));
	FUNC2(&(file->symlink));
	file->cur_content = &(file->content);

	return (file);
}