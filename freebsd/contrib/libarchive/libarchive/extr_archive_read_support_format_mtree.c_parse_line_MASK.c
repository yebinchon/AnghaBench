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
struct mtree_option {struct mtree_option* next; } ;
struct mtree_entry {struct mtree_option* options; } ;
struct mtree {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int MTREE_HAS_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive_read*,struct mtree*,struct archive_entry*,struct mtree_option*,int*) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a, struct archive_entry *entry,
    struct mtree *mtree, struct mtree_entry *mp, int *parsed_kws)
{
	struct mtree_option *iter;
	int r = ARCHIVE_OK, r1;

	for (iter = mp->options; iter != NULL; iter = iter->next) {
		r1 = FUNC1(a, mtree, entry, iter, parsed_kws);
		if (r1 < r)
			r = r1;
	}
	if (r == ARCHIVE_OK && (*parsed_kws & MTREE_HAS_TYPE) == 0) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Missing type keyword in mtree specification");
		return (ARCHIVE_WARN);
	}
	return (r);
}