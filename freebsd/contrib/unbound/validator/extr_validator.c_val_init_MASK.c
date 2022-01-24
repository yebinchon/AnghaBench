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
struct val_env {int /*<<< orphan*/  num_rrset_bogus; int /*<<< orphan*/  bogus_lock; } ;
struct module_env {int need_to_validate; int /*<<< orphan*/  cfg; void** modinfo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct module_env*,struct val_env*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct module_env* env, int id)
{
	struct val_env* val_env = (struct val_env*)FUNC0(1,
		sizeof(struct val_env));
	if(!val_env) {
		FUNC4("malloc failure");
		return 0;
	}
	env->modinfo[id] = (void*)val_env;
	env->need_to_validate = 1;
	FUNC2(&val_env->bogus_lock);
	FUNC3(&val_env->bogus_lock, &val_env->num_rrset_bogus,
		sizeof(val_env->num_rrset_bogus));
#ifdef USE_ECDSA_EVP_WORKAROUND
	ecdsa_evp_workaround_init();
#endif
	if(!FUNC5(env, val_env, env->cfg)) {
		FUNC4("validator: could not apply configuration settings.");
		return 0;
	}

	return 1;
}