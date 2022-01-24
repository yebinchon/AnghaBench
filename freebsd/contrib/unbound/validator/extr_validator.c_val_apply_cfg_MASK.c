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
typedef  scalar_t__ uint32_t ;
struct val_env {int nsec3_keyiter_count; scalar_t__ neg_cache; int /*<<< orphan*/ * nsec3_maxiter; int /*<<< orphan*/  skew_max; int /*<<< orphan*/  skew_min; int /*<<< orphan*/  date_override; scalar_t__ kcache; scalar_t__ bogus_ttl; } ;
struct module_env {scalar_t__ neg_cache; scalar_t__ anchors; scalar_t__ key_cache; } ;
struct config_file {int /*<<< orphan*/  val_nsec3_key_iterations; int /*<<< orphan*/  val_sig_skew_max; int /*<<< orphan*/  val_sig_skew_min; int /*<<< orphan*/  val_date_override; scalar_t__ bogus_ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct config_file*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct val_env*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (struct config_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct module_env* env, struct val_env* val_env, 
	struct config_file* cfg)
{
	int c;
	val_env->bogus_ttl = (uint32_t)cfg->bogus_ttl;
	if(!env->anchors)
		env->anchors = FUNC1();
	if(!env->anchors) {
		FUNC5("out of memory");
		return 0;
	}
	if(!val_env->kcache)
		val_env->kcache = FUNC4(cfg);
	if(!val_env->kcache) {
		FUNC5("out of memory");
		return 0;
	}
	env->key_cache = val_env->kcache;
	if(!FUNC0(env->anchors, cfg)) {
		FUNC5("validator: error in trustanchors config");
		return 0;
	}
	val_env->date_override = cfg->val_date_override;
	val_env->skew_min = cfg->val_sig_skew_min;
	val_env->skew_max = cfg->val_sig_skew_max;
	c = FUNC2(cfg->val_nsec3_key_iterations);
	if(c < 1 || (c&1)) {
		FUNC5("validator: unparseable or odd nsec3 key "
			"iterations: %s", cfg->val_nsec3_key_iterations);
		return 0;
	}
	val_env->nsec3_keyiter_count = c/2;
	if(!FUNC3(val_env, cfg->val_nsec3_key_iterations, c/2)) {
		FUNC5("validator: cannot apply nsec3 key iterations");
		return 0;
	}
	if(!val_env->neg_cache)
		val_env->neg_cache = FUNC6(cfg,
			val_env->nsec3_maxiter[val_env->nsec3_keyiter_count-1]);
	if(!val_env->neg_cache) {
		FUNC5("out of memory");
		return 0;
	}
	env->neg_cache = val_env->neg_cache;
	return 1;
}