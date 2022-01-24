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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fst_global_ctrls_list ; 
 int /*<<< orphan*/  fst_global_groups_list ; 
 int fst_global_initialized ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(void)
{
	FUNC0(&fst_global_groups_list);
	FUNC0(&fst_global_ctrls_list);
	FUNC1();
	fst_global_initialized = 1;
	return 0;
}