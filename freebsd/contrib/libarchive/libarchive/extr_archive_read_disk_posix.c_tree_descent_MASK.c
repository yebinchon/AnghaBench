#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {int working_dir_fd; scalar_t__ openCount; scalar_t__ maxOpenCount; int /*<<< orphan*/  flags; TYPE_2__* stack; int /*<<< orphan*/  depth; int /*<<< orphan*/  tree_errno; int /*<<< orphan*/  path; int /*<<< orphan*/  dirname_length; } ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
struct TYPE_4__ {int flags; int symlink_parent_fd; TYPE_1__ name; } ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int TREE_ERROR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int isDirLink ; 
 int /*<<< orphan*/  onWorkingDir ; 
 int FUNC3 (struct tree*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct tree *t)
{
	int flag, new_fd, r = 0;

	t->dirname_length = FUNC1(&t->path);
	flag = O_RDONLY | O_CLOEXEC;
#if defined(O_DIRECTORY)
	flag |= O_DIRECTORY;
#endif
	new_fd = FUNC3(t, t->stack->name.s, flag);
	FUNC0(new_fd);
	if (new_fd < 0) {
		t->tree_errno = errno;
		r = TREE_ERROR_DIR;
	} else {
		t->depth++;
		/* If it is a link, set up fd for the ascent. */
		if (t->stack->flags & isDirLink) {
			t->stack->symlink_parent_fd = t->working_dir_fd;
			t->openCount++;
			if (t->openCount > t->maxOpenCount)
				t->maxOpenCount = t->openCount;
		} else
			FUNC2(t->working_dir_fd);
		/* Renew the current working directory. */
		t->working_dir_fd = new_fd;
		t->flags &= ~onWorkingDir;
	}
	return (r);
}