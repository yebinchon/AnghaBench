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
 int EXTENT ; 
 struct archive_string* FUNC0 (struct archive_string*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct archive_string) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct archive_string) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct archive_string s;

	FUNC2(&s);
	FUNC4(0, 0, NULL, s);

	/* single-extent allocation */
	FUNC3(&s == FUNC0(&s, 5));
	FUNC5(0, EXTENT, s);

	/* what happens around extent boundaries? */
	FUNC3(&s == FUNC0(&s, EXTENT - 1));
	FUNC5(0, EXTENT, s);

	FUNC3(&s == FUNC0(&s, EXTENT));
	FUNC5(0, EXTENT, s);

	FUNC3(&s == FUNC0(&s, EXTENT + 1));
	FUNC5(0, 2 * EXTENT, s);

	FUNC1(&s);
}