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
struct ub_ctx {int /*<<< orphan*/  queries; int /*<<< orphan*/  mods; scalar_t__ need_to_validate; struct ub_ctx* env; int /*<<< orphan*/ * worker; int /*<<< orphan*/  superalloc; int /*<<< orphan*/ * alloc; int /*<<< orphan*/  seed_rnd; int /*<<< orphan*/  cfg; int /*<<< orphan*/  auth_zones; int /*<<< orphan*/  cfglock; int /*<<< orphan*/  rrpipe_lock; int /*<<< orphan*/  qqpipe_lock; } ;
struct module_env {int /*<<< orphan*/  queries; int /*<<< orphan*/  mods; scalar_t__ need_to_validate; struct module_env* env; int /*<<< orphan*/ * worker; int /*<<< orphan*/  superalloc; int /*<<< orphan*/ * alloc; int /*<<< orphan*/  seed_rnd; int /*<<< orphan*/  cfg; int /*<<< orphan*/  auth_zones; int /*<<< orphan*/  cfglock; int /*<<< orphan*/  rrpipe_lock; int /*<<< orphan*/  qqpipe_lock; } ;
typedef  int /*<<< orphan*/  seed ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context_query_cmp ; 
 int /*<<< orphan*/  FUNC8 (struct ub_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ub_ctx*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ub_ctx*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

__attribute__((used)) static struct ub_ctx* FUNC23(void)
{
	struct ub_ctx* ctx;
	unsigned int seed;
#ifdef USE_WINSOCK
	int r;
	WSADATA wsa_data;
#endif
	
	FUNC5();
	FUNC16(NULL, 0, NULL); /* logs to stderr */
	FUNC15("libunbound");
#ifdef USE_WINSOCK
	if((r = WSAStartup(MAKEWORD(2,2), &wsa_data)) != 0) {
		log_err("could not init winsock. WSAStartup: %s",
			wsa_strerror(r));
		return NULL;
	}
#endif
	verbosity = 0; /* errors only */
	FUNC5();
	ctx = (struct ub_ctx*)FUNC4(1, sizeof(*ctx));
	if(!ctx) {
		errno = ENOMEM;
		return NULL;
	}
	FUNC2(&ctx->superalloc, NULL, 0);
	seed = (unsigned int)FUNC19(NULL) ^ (unsigned int)FUNC12();
	if(!(ctx->seed_rnd = FUNC20(seed, NULL))) {
		FUNC10(&seed, sizeof(seed));
		FUNC21(ctx->seed_rnd);
		FUNC11(ctx);
		errno = ENOMEM;
		return NULL;
	}
	FUNC10(&seed, sizeof(seed));
	FUNC13(&ctx->qqpipe_lock);
	FUNC13(&ctx->rrpipe_lock);
	FUNC13(&ctx->cfglock);
	ctx->env = (struct module_env*)FUNC4(1, sizeof(*ctx->env));
	if(!ctx->env) {
		FUNC21(ctx->seed_rnd);
		FUNC11(ctx);
		errno = ENOMEM;
		return NULL;
	}
	ctx->env->cfg = FUNC6();
	if(!ctx->env->cfg) {
		FUNC11(ctx->env);
		FUNC21(ctx->seed_rnd);
		FUNC11(ctx);
		errno = ENOMEM;
		return NULL;
	}
	/* init edns_known_options */
	if(!FUNC9(ctx->env)) {
		FUNC7(ctx->env->cfg);
		FUNC11(ctx->env);
		FUNC21(ctx->seed_rnd);
		FUNC11(ctx);
		errno = ENOMEM;
		return NULL;
	}
	ctx->env->auth_zones = FUNC3();
	if(!ctx->env->auth_zones) {
		FUNC8(ctx->env);
		FUNC7(ctx->env->cfg);
		FUNC11(ctx->env);
		FUNC21(ctx->seed_rnd);
		FUNC11(ctx);
		errno = ENOMEM;
		return NULL;
	}
	ctx->env->alloc = &ctx->superalloc;
	ctx->env->worker = NULL;
	ctx->env->need_to_validate = 0;
	FUNC17(&ctx->mods);
	FUNC18(&ctx->queries, &context_query_cmp);
	return ctx;
}