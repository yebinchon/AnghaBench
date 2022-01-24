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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ count ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  static_cond ; 
 int /*<<< orphan*/  static_mutex ; 
 int toggle ; 
 int /*<<< orphan*/  total ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	FUNC1("2: Second thread.\n");
	FUNC0(FUNC4(&static_mutex));
	FUNC1("2: Before the loop.\n");
	while (count>0) {
		count--;
		total++;
		toggle = 0;
		/* printf("2: Before signal %d.\n", count); */
		FUNC0(FUNC2(&static_cond));
		do {
			FUNC0(FUNC3(&static_cond,
			    &static_mutex));
		} while (toggle != 1);
	}
	FUNC1("2: After the loop.\n");
	FUNC0(FUNC5(&static_mutex));

	return NULL;
}