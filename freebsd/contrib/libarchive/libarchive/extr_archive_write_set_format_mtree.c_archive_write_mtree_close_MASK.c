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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  s; } ;
struct mtree_writer {TYPE_1__ buf; int /*<<< orphan*/ * root; } ;
struct archive_write {int /*<<< orphan*/  archive; struct mtree_writer* format_data; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct archive_write*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a)
{
	struct mtree_writer *mtree= a->format_data;
	int ret;

	if (mtree->root != NULL) {
		ret = FUNC2(a);
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	FUNC1(&a->archive, 1);

	return FUNC0(a, mtree->buf.s, mtree->buf.length);
}