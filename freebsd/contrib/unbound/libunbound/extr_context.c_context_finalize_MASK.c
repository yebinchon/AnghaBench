#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ub_ctx {int finalized; TYPE_1__* env; int /*<<< orphan*/  local_zones; int /*<<< orphan*/  mods; int /*<<< orphan*/  log_out; scalar_t__ logfile_override; } ;
struct config_file {int /*<<< orphan*/  msg_cache_size; int /*<<< orphan*/  msg_cache_slabs; int /*<<< orphan*/  module_conf; int /*<<< orphan*/  use_syslog; int /*<<< orphan*/  logfile; int /*<<< orphan*/  verbosity; } ;
struct TYPE_3__ {int /*<<< orphan*/  infra_cache; int /*<<< orphan*/  rrset_cache; int /*<<< orphan*/  alloc; struct config_file* cfg; int /*<<< orphan*/  msg_cache; int /*<<< orphan*/  auth_zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_DEFAULT_STARTARRAY ; 
 int UB_INITFAIL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  msgreply_sizefunc ; 
 int /*<<< orphan*/  query_entry_delete ; 
 int /*<<< orphan*/  query_info_compare ; 
 int /*<<< orphan*/  reply_info_delete ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct config_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbosity ; 

int 
FUNC13(struct ub_ctx* ctx)
{
	struct config_file* cfg = ctx->env->cfg;
	verbosity = cfg->verbosity;
	if(ctx->logfile_override)
		FUNC6(ctx->log_out);
	else	FUNC7(cfg->logfile, cfg->use_syslog, NULL);
	FUNC1(cfg);
	if(!FUNC8(&ctx->mods, cfg->module_conf, ctx->env))
		return UB_INITFAIL;
	FUNC5(VERB_ALGO, ctx->env);
	ctx->local_zones = FUNC4();
	if(!ctx->local_zones)
		return UB_NOMEM;
	if(!FUNC3(ctx->local_zones, cfg))
		return UB_INITFAIL;
	if(!FUNC0(ctx->env->auth_zones, cfg, 1))
		return UB_INITFAIL;
	if(!FUNC12(ctx->env->msg_cache, cfg->msg_cache_size,
		cfg->msg_cache_slabs)) {
		FUNC11(ctx->env->msg_cache);
		ctx->env->msg_cache = FUNC10(cfg->msg_cache_slabs,
			HASH_DEFAULT_STARTARRAY, cfg->msg_cache_size,
			msgreply_sizefunc, query_info_compare,
			query_entry_delete, reply_info_delete, NULL);
		if(!ctx->env->msg_cache)
			return UB_NOMEM;
	}
	ctx->env->rrset_cache = FUNC9(ctx->env->rrset_cache,
		ctx->env->cfg, ctx->env->alloc);
	if(!ctx->env->rrset_cache)
		return UB_NOMEM;
	ctx->env->infra_cache = FUNC2(ctx->env->infra_cache, cfg);
	if(!ctx->env->infra_cache)
		return UB_NOMEM;
	ctx->finalized = 1;
	return UB_NOERROR;
}