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
struct stat {int dummy; } ;
struct tree {int flags; struct stat const st; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stat const*,int /*<<< orphan*/ ) ; 
 int hasStat ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree*) ; 
 scalar_t__ FUNC4 (struct tree*) ; 

__attribute__((used)) static const struct stat *
FUNC5(struct tree *t)
{
	if (!(t->flags & hasStat)) {
#ifdef HAVE_FSTATAT
		if (fstatat(tree_current_dir_fd(t),
		    tree_current_access_path(t), &t->st, 0) != 0)
#else
		if (FUNC4(t) != 0)
			return NULL;
		if (FUNC1(FUNC2(t), &t->st) != 0)
#endif
			return NULL;
		t->flags |= hasStat;
	}
	return (&t->st);
}