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
struct tree {int initial_symlink_mode; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tree* FUNC2 (int,int) ; 
 struct tree* FUNC3 (struct tree*,char const*,int) ; 

__attribute__((used)) static struct tree *
FUNC4(const char *path, int symlink_mode, int restore_time)
{
	struct tree *t;

	if ((t = FUNC2(1, sizeof(*t))) == NULL)
		return (NULL);
	FUNC1(&t->path);
	FUNC0(&t->path, 31);
	t->initial_symlink_mode = symlink_mode;
	return (FUNC3(t, path, restore_time));
}