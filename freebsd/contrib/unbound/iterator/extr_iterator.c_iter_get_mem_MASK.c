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
struct module_env {scalar_t__* modinfo; } ;
struct iter_env {int /*<<< orphan*/  priv; int /*<<< orphan*/  donotq; scalar_t__ max_dependency_depth; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

size_t 
FUNC2(struct module_env* env, int id)
{
	struct iter_env* ie = (struct iter_env*)env->modinfo[id];
	if(!ie)
		return 0;
	return sizeof(*ie) + sizeof(int)*((size_t)ie->max_dependency_depth+1)
		+ FUNC0(ie->donotq) + FUNC1(ie->priv);
}