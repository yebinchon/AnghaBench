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
 int /*<<< orphan*/  FUNC0 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 struct archive_string* FUNC2 (struct archive_string*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*,struct archive_string) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct archive_string s;

	FUNC1(&s);
	FUNC4(0, 0, NULL, s);

	/* perfect length */
	FUNC3(&s == FUNC2(&s, "fubar", 5));
	FUNC4(5, EXTENT, "fubar", s);

	/* short read */
	FUNC3(&s == FUNC2(&s, "snafubar", 5));
	FUNC4(5, EXTENT, "snafu", s);

	/* long read is ok too! */
	FUNC3(&s == FUNC2(&s, "snafu", 8));
	FUNC4(5, EXTENT, "snafu", s);

	FUNC0(&s);
}