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
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,struct archive_string) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct archive_string s;

	FUNC2(&s);
	FUNC3(0, 0, NULL, s);

	/* null target */
	FUNC0(&s, 'X');
	FUNC3(1, EXTENT, "X", s);

	/* non-empty target */
	FUNC0(&s, 'Y');
	FUNC3(2, EXTENT, "XY", s);

	FUNC1(&s);
}