#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int length; int /*<<< orphan*/  s; } ;
struct mtree_writer {int depth; TYPE_3__ buf; scalar_t__ dironly; TYPE_3__ ebuf; scalar_t__ indent; } ;
struct TYPE_8__ {int /*<<< orphan*/  s; } ;
struct TYPE_7__ {int /*<<< orphan*/  s; } ;
struct mtree_entry {TYPE_2__ basename; TYPE_1__ parentdir; } ;
struct archive_write {struct mtree_writer* format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtree_writer*) ; 

__attribute__((used)) static int
FUNC6(struct archive_write *a, struct mtree_entry *n)
{
	struct mtree_writer *mtree = a->format_data;
	int ret;

	if (n->parentdir.s) {
		if (mtree->indent) {
			int i, pd = mtree->depth * 4;
			for (i = 0; i < pd; i++)
				FUNC1(&mtree->buf, ' ');
		}
		FUNC3(&mtree->buf, "# %s/%s\n",
			n->parentdir.s, n->basename.s);
	}

	if (mtree->indent) {
		FUNC2(&mtree->ebuf);
		FUNC4(&mtree->ebuf, "..\n\n", (mtree->dironly)?3:4);
		FUNC5(mtree);
	} else
		FUNC4(&mtree->buf, "..\n\n", (mtree->dironly)?3:4);

	if (mtree->buf.length > 32768) {
		ret = FUNC0(
			a, mtree->buf.s, mtree->buf.length);
		FUNC2(&mtree->buf);
	} else
		ret = ARCHIVE_OK;
	return (ret);
}