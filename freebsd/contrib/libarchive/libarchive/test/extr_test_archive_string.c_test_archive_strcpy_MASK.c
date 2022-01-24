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
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*,struct archive_string) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct archive_string s;

	FUNC2(&s);
	FUNC4(0, 0, NULL, s);

	/* null target */
	FUNC3(&s == FUNC0(&s, "snafu"));
	FUNC4(5, EXTENT, "snafu", s);

	/* dirty target */
	FUNC3(&s == FUNC0(&s, "foo"));
	FUNC4(3, EXTENT, "foo", s);

	/* dirty target, empty source */
	FUNC3(&s == FUNC0(&s, ""));
	FUNC4(0, EXTENT, "", s);

	FUNC1(&s);
}