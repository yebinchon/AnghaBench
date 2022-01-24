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
 int /*<<< orphan*/  fasttrap_cleanup_cv ; 
 int /*<<< orphan*/  fasttrap_cleanup_mtx ; 
 int fasttrap_cleanup_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC0(&fasttrap_cleanup_mtx);
	if (!fasttrap_cleanup_work) {
		fasttrap_cleanup_work = 1;
		FUNC2(&fasttrap_cleanup_cv);
	}
	FUNC1(&fasttrap_cleanup_mtx);
}