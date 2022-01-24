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
struct module_env {int /*<<< orphan*/  cfg; void** modinfo; } ;
struct iter_env {int /*<<< orphan*/  num_queries_ratelimited; int /*<<< orphan*/  queries_ratelimit_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int 
FUNC5(struct module_env* env, int id)
{
	struct iter_env* iter_env = (struct iter_env*)FUNC0(1,
		sizeof(struct iter_env));
	if(!iter_env) {
		FUNC4("malloc failure");
		return 0;
	}
	env->modinfo[id] = (void*)iter_env;

	FUNC2(&iter_env->queries_ratelimit_lock);
	FUNC3(&iter_env->queries_ratelimit_lock,
			&iter_env->num_queries_ratelimited,
		sizeof(iter_env->num_queries_ratelimited));

	if(!FUNC1(iter_env, env->cfg)) {
		FUNC4("iterator: could not apply configuration settings.");
		return 0;
	}

	return 1;
}