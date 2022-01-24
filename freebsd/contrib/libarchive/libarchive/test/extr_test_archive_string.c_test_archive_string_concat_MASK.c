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
struct archive_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT ; 
 struct archive_string* FUNC0 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,struct archive_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*,struct archive_string) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct archive_string s, t, u, v;

	FUNC3(&s);
	FUNC5(0, 0, NULL, s);
	FUNC3(&t);
	FUNC5(0, 0, NULL, t);
	FUNC3(&u);
	FUNC5(0, 0, NULL, u);
	FUNC3(&v);
	FUNC5(0, 0, NULL, v);

	/* null target, null source */
	FUNC1(&t, &s);
	FUNC5(0, 0, NULL, s);
	FUNC5(0, EXTENT, "", t);

	/* null target, empty source */
	FUNC4(&s == FUNC0(&s, ""));
	FUNC1(&u, &s);
	FUNC5(0, EXTENT, "", s);
	FUNC5(0, EXTENT, "", u);

	/* null target, non-empty source */
	FUNC4(&s == FUNC0(&s, "foo"));
	FUNC1(&v, &s);
	FUNC5(3, EXTENT, "foo", s);
	FUNC5(3, EXTENT, "foo", v);

	/* empty target, empty source */
	FUNC4(&s == FUNC0(&s, ""));
	FUNC4(&t == FUNC0(&t, ""));
	FUNC1(&t, &s);
	FUNC5(0, EXTENT, "", s);
	FUNC5(0, EXTENT, "", t);

	/* empty target, non-empty source */
	FUNC4(&s == FUNC0(&s, "snafu"));
	FUNC4(&t == FUNC0(&t, ""));
	FUNC1(&t, &s);
	FUNC5(5, EXTENT, "snafu", s);
	FUNC5(5, EXTENT, "snafu", t);

	FUNC2(&v);
	FUNC2(&u);
	FUNC2(&t);
	FUNC2(&s);
}