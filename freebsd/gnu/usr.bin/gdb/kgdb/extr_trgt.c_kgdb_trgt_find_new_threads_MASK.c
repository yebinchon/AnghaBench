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
struct target_ops {int /*<<< orphan*/  (* to_find_new_threads ) () ;} ;

/* Variables and functions */
 struct target_ops* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_trgt_ops ; 
 int /*<<< orphan*/ * kvm ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct target_ops *tb;

	if (kvm != NULL)
		return;

	tb = FUNC0(&kgdb_trgt_ops);
	if (tb->to_find_new_threads != NULL)
		tb->to_find_new_threads();
}