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
struct val_env {struct val_env* nsec3_maxiter; struct val_env* nsec3_keysize; int /*<<< orphan*/  neg_cache; int /*<<< orphan*/  kcache; int /*<<< orphan*/  bogus_lock; } ;
struct module_env {int /*<<< orphan*/ ** modinfo; int /*<<< orphan*/ * anchors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct val_env*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct module_env* env, int id)
{
	struct val_env* val_env;
	if(!env || !env->modinfo[id])
		return;
	val_env = (struct val_env*)env->modinfo[id];
	FUNC3(&val_env->bogus_lock);
	FUNC0(env->anchors);
	env->anchors = NULL;
	FUNC2(val_env->kcache);
	FUNC4(val_env->neg_cache);
	FUNC1(val_env->nsec3_keysize);
	FUNC1(val_env->nsec3_maxiter);
	FUNC1(val_env);
	env->modinfo[id] = NULL;
}