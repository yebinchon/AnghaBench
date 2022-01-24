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
struct tree {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tree*) ; 
 scalar_t__ FUNC3 (struct tree*) ; 

__attribute__((used)) static int
FUNC4(struct tree *t, const char *path, int flags)
{
#ifdef HAVE_OPENAT
	return (openat(tree_current_dir_fd(t), path, flags));
#else
	if (FUNC3(t) != 0)
		return (-1);
	return (FUNC0(path, flags));
#endif
}