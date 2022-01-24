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
struct tree {int max_filesystem_id; struct tree* filesystem_table; struct tree* allocation_ptr; struct tree* sparse_list; struct tree* dirent; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tree*) ; 

__attribute__((used)) static void
FUNC2(struct tree *t)
{
	int i;

	if (t == NULL)
		return;
	FUNC0(&t->path);
#if defined(USE_READDIR_R)
	free(t->dirent);
#endif
	FUNC1(t->sparse_list);
	for (i = 0; i < t->max_filesystem_id; i++)
		FUNC1(t->filesystem_table[i].allocation_ptr);
	FUNC1(t->filesystem_table);
	FUNC1(t);
}