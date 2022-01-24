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
struct dnsc_env {int /*<<< orphan*/  num_query_dnscrypt_replay; int /*<<< orphan*/  nonces_cache_lock; int /*<<< orphan*/  nonces_cache; int /*<<< orphan*/  num_query_dnscrypt_secret_missed_cache; int /*<<< orphan*/  shared_secrets_cache_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  sodium_misuse_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct dnsc_env *
FUNC6(void)
{
	struct dnsc_env *env;
#ifdef SODIUM_MISUSE_HANDLER
	sodium_set_misuse_handler(sodium_misuse_handler);
#endif
	if (FUNC4() == -1) {
		FUNC1("dnsc_create: could not initialize libsodium.");
	}
	env = (struct dnsc_env *) FUNC0(1, sizeof(struct dnsc_env));
	FUNC2(&env->shared_secrets_cache_lock);
	FUNC3(&env->shared_secrets_cache_lock,
                 &env->num_query_dnscrypt_secret_missed_cache,
                 sizeof(env->num_query_dnscrypt_secret_missed_cache));
	FUNC2(&env->nonces_cache_lock);
	FUNC3(&env->nonces_cache_lock,
                 &env->nonces_cache,
                 sizeof(env->nonces_cache));
	FUNC3(&env->nonces_cache_lock,
                 &env->num_query_dnscrypt_replay,
                 sizeof(env->num_query_dnscrypt_replay));

	return env;
}