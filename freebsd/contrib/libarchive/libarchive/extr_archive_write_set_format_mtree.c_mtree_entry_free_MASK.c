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
struct mtree_entry {struct mtree_entry* reg_info; struct mtree_entry* dir_info; int /*<<< orphan*/  fflags_text; int /*<<< orphan*/  gname; int /*<<< orphan*/  uname; int /*<<< orphan*/  symlink; int /*<<< orphan*/  pathname; int /*<<< orphan*/  basename; int /*<<< orphan*/  parentdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtree_entry*) ; 

__attribute__((used)) static void
FUNC2(struct mtree_entry *me)
{
	FUNC0(&me->parentdir);
	FUNC0(&me->basename);
	FUNC0(&me->pathname);
	FUNC0(&me->symlink);
	FUNC0(&me->uname);
	FUNC0(&me->gname);
	FUNC0(&me->fflags_text);
	FUNC1(me->dir_info);
	FUNC1(me->reg_info);
	FUNC1(me);
}