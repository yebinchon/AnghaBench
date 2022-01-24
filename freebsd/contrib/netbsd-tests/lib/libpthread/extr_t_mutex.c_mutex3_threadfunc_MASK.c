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
 int /*<<< orphan*/  global_x ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  static_mutex ; 
 int /*<<< orphan*/  ts_lengthy ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	long count = *(int *)arg;

	FUNC2("2: Second thread (%p). Count is %ld\n", FUNC4(), count);

	while (count--) {
		FUNC0(FUNC1(&static_mutex, &ts_lengthy));
		global_x++;
		FUNC0(FUNC3(&static_mutex));
	}

	return (void *)count;
}