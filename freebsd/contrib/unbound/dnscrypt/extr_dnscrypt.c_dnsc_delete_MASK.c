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
struct dnsc_env {int /*<<< orphan*/  nonces_cache; int /*<<< orphan*/  shared_secrets_cache; int /*<<< orphan*/  nonces_cache_lock; int /*<<< orphan*/  shared_secrets_cache_lock; int /*<<< orphan*/  keypairs; int /*<<< orphan*/  certs; int /*<<< orphan*/  rotated_certs; int /*<<< orphan*/  signed_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (struct dnsc_env*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(struct dnsc_env *env)
{
	if(!env) {
		return;
	}
	FUNC4(VERB_OPS, "DNSCrypt: Freeing environment.");
	FUNC3(env->signed_certs);
	FUNC3(env->rotated_certs);
	FUNC3(env->certs);
	FUNC3(env->keypairs);
	FUNC1(&env->shared_secrets_cache_lock);
	FUNC1(&env->nonces_cache_lock);
	FUNC2(env->shared_secrets_cache);
	FUNC2(env->nonces_cache);
	FUNC0(env);
}