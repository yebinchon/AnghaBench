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
 int /*<<< orphan*/ * FUNC0 (struct archive_string*,char*) ; 
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
	FUNC1(&u, &t);
	FUNC5(0, EXTENT, "", t);
	FUNC5(0, EXTENT, "", u);

	/* empty target, empty source */
	FUNC1(&u, &t);
	FUNC5(0, EXTENT, "", t);
	FUNC5(0, EXTENT, "", u);

	/* null target, non-empty source */
	FUNC4(NULL != FUNC0(&s, "snafubar"));
	FUNC5(8, EXTENT, "snafubar", s);

	FUNC1(&v, &s);
	FUNC5(8, EXTENT, "snafubar", s);
	FUNC5(8, EXTENT, "snafubar", v);

	/* empty target, non-empty source */
	FUNC5(0, EXTENT, "", t);
	FUNC1(&t, &s);
	FUNC5(8, EXTENT, "snafubar", s);
	FUNC5(8, EXTENT, "snafubar", t);

	/* non-empty target, non-empty source */
	FUNC4(NULL != FUNC0(&s, "fubar"));
	FUNC5(5, EXTENT, "fubar", s);

	FUNC1(&t, &s);
	FUNC5(5, EXTENT, "fubar", s);
	FUNC5(5, EXTENT, "fubar", t);

	FUNC2(&v);
	FUNC2(&u);
	FUNC2(&t);
	FUNC2(&s);
}