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
struct mtree_writer {int keys; struct mtree_entry* mtree_entry; scalar_t__ dironly; int /*<<< orphan*/  entry_bytes_remaining; scalar_t__ output_global_set; int /*<<< orphan*/  buf; scalar_t__ first; } ;
struct mtree_entry {scalar_t__ reg_info; } ;
struct archive_write {struct mtree_writer* format_data; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int SET_KEYS ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtree_entry*) ; 
 int FUNC4 (struct archive_write*,struct archive_entry*,struct mtree_entry**) ; 
 int FUNC5 (struct archive_write*,struct mtree_entry**) ; 
 int /*<<< orphan*/  FUNC6 (struct mtree_writer*) ; 

__attribute__((used)) static int
FUNC7(struct archive_write *a,
    struct archive_entry *entry)
{
	struct mtree_writer *mtree= a->format_data;
	struct mtree_entry *mtree_entry;
	int r, r2;

	if (mtree->first) {
		mtree->first = 0;
		FUNC2(&mtree->buf, "#mtree\n");
		if ((mtree->keys & SET_KEYS) == 0)
			mtree->output_global_set = 0;/* Disabled. */
	}

	mtree->entry_bytes_remaining = FUNC1(entry);

	/* While directory only mode, we do not handle non directory files. */
	if (mtree->dironly && FUNC0(entry) != AE_IFDIR)
		return (ARCHIVE_OK);

	r2 = FUNC4(a, entry, &mtree_entry);
	if (r2 < ARCHIVE_WARN)
		return (r2);
	r = FUNC5(a, &mtree_entry);
	if (r < ARCHIVE_WARN) {
		FUNC3(mtree_entry);
		return (r);
	}
	mtree->mtree_entry = mtree_entry;

	/* If the current file is a regular file, we have to
	 * compute the sum of its content.
	 * Initialize a bunch of checksum context. */
	if (mtree_entry->reg_info)
		FUNC6(mtree);

	return (r2);
}