
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int finalized; TYPE_1__* env; int local_zones; int mods; int log_out; scalar_t__ logfile_override; } ;
struct config_file {int msg_cache_size; int msg_cache_slabs; int module_conf; int use_syslog; int logfile; int verbosity; } ;
struct TYPE_3__ {int infra_cache; int rrset_cache; int alloc; struct config_file* cfg; int msg_cache; int auth_zones; } ;


 int HASH_DEFAULT_STARTARRAY ;
 int UB_INITFAIL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int VERB_ALGO ;
 int auth_zones_apply_cfg (int ,struct config_file*,int) ;
 int config_apply (struct config_file*) ;
 int infra_adjust (int ,struct config_file*) ;
 int local_zones_apply_cfg (int ,struct config_file*) ;
 int local_zones_create () ;
 int log_edns_known_options (int ,TYPE_1__*) ;
 int log_file (int ) ;
 int log_init (int ,int ,int *) ;
 int modstack_setup (int *,int ,TYPE_1__*) ;
 int msgreply_sizefunc ;
 int query_entry_delete ;
 int query_info_compare ;
 int reply_info_delete ;
 int rrset_cache_adjust (int ,struct config_file*,int ) ;
 int slabhash_create (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int slabhash_delete (int ) ;
 int slabhash_is_size (int ,int ,int ) ;
 int verbosity ;

int
context_finalize(struct ub_ctx* ctx)
{
 struct config_file* cfg = ctx->env->cfg;
 verbosity = cfg->verbosity;
 if(ctx->logfile_override)
  log_file(ctx->log_out);
 else log_init(cfg->logfile, cfg->use_syslog, ((void*)0));
 config_apply(cfg);
 if(!modstack_setup(&ctx->mods, cfg->module_conf, ctx->env))
  return UB_INITFAIL;
 log_edns_known_options(VERB_ALGO, ctx->env);
 ctx->local_zones = local_zones_create();
 if(!ctx->local_zones)
  return UB_NOMEM;
 if(!local_zones_apply_cfg(ctx->local_zones, cfg))
  return UB_INITFAIL;
 if(!auth_zones_apply_cfg(ctx->env->auth_zones, cfg, 1))
  return UB_INITFAIL;
 if(!slabhash_is_size(ctx->env->msg_cache, cfg->msg_cache_size,
  cfg->msg_cache_slabs)) {
  slabhash_delete(ctx->env->msg_cache);
  ctx->env->msg_cache = slabhash_create(cfg->msg_cache_slabs,
   HASH_DEFAULT_STARTARRAY, cfg->msg_cache_size,
   msgreply_sizefunc, query_info_compare,
   query_entry_delete, reply_info_delete, ((void*)0));
  if(!ctx->env->msg_cache)
   return UB_NOMEM;
 }
 ctx->env->rrset_cache = rrset_cache_adjust(ctx->env->rrset_cache,
  ctx->env->cfg, ctx->env->alloc);
 if(!ctx->env->rrset_cache)
  return UB_NOMEM;
 ctx->env->infra_cache = infra_adjust(ctx->env->infra_cache, cfg);
 if(!ctx->env->infra_cache)
  return UB_NOMEM;
 ctx->finalized = 1;
 return UB_NOERROR;
}
