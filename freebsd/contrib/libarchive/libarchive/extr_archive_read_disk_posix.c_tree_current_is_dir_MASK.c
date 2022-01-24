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
struct tree {int flags; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int hasLstat ; 
 struct stat* FUNC2 (struct tree*) ; 
 struct stat* FUNC3 (struct tree*) ; 

__attribute__((used)) static int
FUNC4(struct tree *t)
{
	const struct stat *st;
	/*
	 * If we already have lstat() info, then try some
	 * cheap tests to determine if this is a dir.
	 */
	if (t->flags & hasLstat) {
		/* If lstat() says it's a dir, it must be a dir. */
		st = FUNC2(t);
		if (st == NULL)
			return 0;
		if (FUNC0(st->st_mode))
			return 1;
		/* Not a dir; might be a link to a dir. */
		/* If it's not a link, then it's not a link to a dir. */
		if (!FUNC1(st->st_mode))
			return 0;
		/*
		 * It's a link, but we don't know what it's a link to,
		 * so we'll have to use stat().
		 */
	}

	st = FUNC3(t);
	/* If we can't stat it, it's not a dir. */
	if (st == NULL)
		return 0;
	/* Use the definitive test.  Hopefully this is cached. */
	return (FUNC0(st->st_mode));
}