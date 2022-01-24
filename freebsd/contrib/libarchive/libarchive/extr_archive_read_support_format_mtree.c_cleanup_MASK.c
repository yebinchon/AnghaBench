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
struct mtree_entry {struct mtree_entry* buff; int /*<<< orphan*/  resolver; int /*<<< orphan*/  contents_name; int /*<<< orphan*/  current_dir; int /*<<< orphan*/  line; int /*<<< orphan*/  options; struct mtree_entry* name; struct mtree_entry* next; struct mtree_entry* entries; } ;
struct mtree {struct mtree* buff; int /*<<< orphan*/  resolver; int /*<<< orphan*/  contents_name; int /*<<< orphan*/  current_dir; int /*<<< orphan*/  line; int /*<<< orphan*/  options; struct mtree* name; struct mtree* next; struct mtree* entries; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtree_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a)
{
	struct mtree *mtree;
	struct mtree_entry *p, *q;

	mtree = (struct mtree *)(a->format->data);

	p = mtree->entries;
	while (p != NULL) {
		q = p->next;
		FUNC2(p->name);
		FUNC3(p->options);
		FUNC2(p);
		p = q;
	}
	FUNC1(&mtree->line);
	FUNC1(&mtree->current_dir);
	FUNC1(&mtree->contents_name);
	FUNC0(mtree->resolver);

	FUNC2(mtree->buff);
	FUNC2(mtree);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}