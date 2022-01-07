
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon {TYPE_1__* env; int superalloc; struct config_file* cfg; } ;
struct config_file {int msg_cache_size; int msg_cache_slabs; } ;
struct TYPE_2__ {int infra_cache; int rrset_cache; int msg_cache; } ;


 int HASH_DEFAULT_STARTARRAY ;
 int config_apply (struct config_file*) ;
 int fatal_exit (char*) ;
 int infra_adjust (int ,struct config_file*) ;
 int msgreply_sizefunc ;
 int query_entry_delete ;
 int query_info_compare ;
 int reply_info_delete ;
 int rrset_cache_adjust (int ,struct config_file*,int *) ;
 int slabhash_create (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int slabhash_delete (int ) ;
 int slabhash_is_size (int ,int ,int ) ;

void daemon_apply_cfg(struct daemon* daemon, struct config_file* cfg)
{
        daemon->cfg = cfg;
 config_apply(cfg);
 if(!slabhash_is_size(daemon->env->msg_cache, cfg->msg_cache_size,
     cfg->msg_cache_slabs)) {
  slabhash_delete(daemon->env->msg_cache);
  daemon->env->msg_cache = slabhash_create(cfg->msg_cache_slabs,
   HASH_DEFAULT_STARTARRAY, cfg->msg_cache_size,
   msgreply_sizefunc, query_info_compare,
   query_entry_delete, reply_info_delete, ((void*)0));
  if(!daemon->env->msg_cache) {
   fatal_exit("malloc failure updating config settings");
  }
 }
 if((daemon->env->rrset_cache = rrset_cache_adjust(
  daemon->env->rrset_cache, cfg, &daemon->superalloc)) == 0)
  fatal_exit("malloc failure updating config settings");
 if((daemon->env->infra_cache = infra_adjust(daemon->env->infra_cache,
  cfg))==0)
  fatal_exit("malloc failure updating config settings");
}
