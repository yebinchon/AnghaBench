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
struct module_env {int /*<<< orphan*/ ** modinfo; } ;
struct iter_env {struct iter_env* caps_white; int /*<<< orphan*/  donotq; int /*<<< orphan*/  priv; struct iter_env* target_fetch_policy; int /*<<< orphan*/  queries_ratelimit_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  caps_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_env*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iter_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC5(struct module_env* env, int id)
{
	struct iter_env* iter_env;
	if(!env || !env->modinfo[id])
		return;
	iter_env = (struct iter_env*)env->modinfo[id];
	FUNC2(&iter_env->queries_ratelimit_lock);
	FUNC1(iter_env->target_fetch_policy);
	FUNC3(iter_env->priv);
	FUNC0(iter_env->donotq);
	if(iter_env->caps_white) {
		FUNC4(iter_env->caps_white, caps_free, NULL);
		FUNC1(iter_env->caps_white);
	}
	FUNC1(iter_env);
	env->modinfo[id] = NULL;
}