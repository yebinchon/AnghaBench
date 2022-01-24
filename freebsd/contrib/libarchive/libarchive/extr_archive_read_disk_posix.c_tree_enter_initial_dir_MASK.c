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
struct tree {int flags; int /*<<< orphan*/  initial_dir_fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int onInitialDir ; 
 int onWorkingDir ; 

__attribute__((used)) static int
FUNC1(struct tree *t)
{
	int r = 0;

	if ((t->flags & onInitialDir) == 0) {
		r = FUNC0(t->initial_dir_fd);
		if (r == 0) {
			t->flags &= ~onWorkingDir;
			t->flags |= onInitialDir;
		}
	}
	return (r);
}